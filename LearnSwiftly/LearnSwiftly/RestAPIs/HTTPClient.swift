//
//  HTTPClient.swift
//  
//  Created by Manajit Halder on 22/02/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

enum HttpMethod: String {
    case GET
    case POST
    case PUT
    case PATCH
    case DELETE
}

enum HttpError: Error {
    case BadRequest             // HTTP status code 400
    case UnauthorizedRequest    // HTTP status code 401
    case RequestForbidden       // HTTP status code 403
    case ResourceNotFound       // HTTP status code 404
    case InternalServerError    // HTTP status code 500
    case Unknown                // HTTP status coce unknown
}

class HttpClient {
    private init() {}
    static let shared = HttpClient()
    
    var courseURL: URL {
        get async throws {
            guard let url = URL(string: "") else {
                throw HttpError.BadRequest
            }
            
            return url
        }
    }
    
    func handleHttpError(errorCode: Int?) async throws {
        switch errorCode {
        case 400:
            throw HttpError.BadRequest
        case 401:
            throw HttpError.UnauthorizedRequest
        case 403:
            throw HttpError.RequestForbidden
        case 404:
            throw HttpError.ResourceNotFound
        case 500:
            throw HttpError.InternalServerError
        default:
            print("errorCode: \(String(describing: errorCode))")
            throw HttpError.Unknown
        }
    }
    
    func handleJSONDecodingError(_ error: DecodingError) {
        switch error {
        case .dataCorrupted(let context):
            print("Data corrupted: \(context.debugDescription)")
        case .keyNotFound(let key, let context):
            print("Key '\(key.stringValue)' not found in \(context.debugDescription)")
        case .typeMismatch(let type, let context):
            print("Type mismatch for type '\(type)' in \(context.debugDescription)")
        case .valueNotFound(let type, let context):
            print("Value not found for type '\(type)' in \(context.debugDescription)")
        @unknown default:
            print("An unknown decoding error occurred")
        }
    }
    
    // GET Request
    func fetchData() async throws -> [Course] {
        var request = try await URLRequest(url: courseURL)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        let responseCode = (response as? HTTPURLResponse)?.statusCode
        if responseCode != 200 {
            try await handleHttpError(errorCode: responseCode)
        }
        
        var courseList: [Course] = []
        do {
            courseList = try JSONDecoder().decode([Course].self, from: data)
        } catch let error as DecodingError {
            handleJSONDecodingError(error)
        } catch {
            print("An unexpected error occurred \(error)")
        }
        
        return courseList
    }
    
    // POST Request
    func postData(object: Course) async throws {
        var request = try await URLRequest(url: courseURL)
        request.httpMethod = HttpMethod.POST.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        request.httpBody = try? JSONEncoder().encode(object)
        
        let (_, response) = try await URLSession.shared.data(for: request)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw HttpError.BadRequest
        }
    }
    
    // PUT (UPDATE) Request
    func putData(object: Course) async throws {
        var request = try await URLRequest(url: courseURL)
        request.httpMethod = HttpMethod.PUT.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(object)
        
        let (_, response) = try await URLSession.shared.data(for: request)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw HttpError.BadRequest
        }
    }
    
    // POST, PUT and PATCH Request in single method
    func sendData(object: Course, httpMethod: HttpMethod) async throws {
        var request: URLRequest
        if httpMethod.rawValue == "POST" {
            request = try await URLRequest(url: courseURL)
        } else { // for PUT and PATCH
            request = try await URLRequest(url: courseURL.appendingPathComponent("\(object.id)"))
        }
        request.httpMethod = httpMethod.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        request.httpBody = try? JSONEncoder().encode(object)
        
        let (_, response) = try await URLSession.shared.data(for: request)
        
        let responseCode = (response as? HTTPURLResponse)?.statusCode
        if !(200...299).contains(responseCode!) {
            try await handleHttpError(errorCode: responseCode)
        }
    }
    
    // DELETE Request
    func deleteData(with courseID: String) async throws {
        var request = try await URLRequest(url: courseURL.appendingPathComponent("\(courseID)"))
        request.httpMethod = HttpMethod.DELETE.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")

        let (_, response) = try await URLSession.shared.data(for: request)
        
        let responseCode = (response as? HTTPURLResponse)?.statusCode
        // 204: “No Content.” Means that the server has successfully processed the request, but is not going to return any content
        if !(200...299).contains(responseCode!){
            try await handleHttpError(errorCode: responseCode)
        }
    }
}
