//
//  Service.swift
//  
//
//  Created by Stefan Klein Nulent on 27/01/2021.
//

import Foundation

public final class Service {
    
    // MARK: - Types
    
    public typealias Completion<Value> = (Result<Value, Error>) -> Void
    
    public enum ServiceError: Error {
        case invalidEndpoint
        case invalidResponse
        case invalidDate
    }
    
    
    
    // MARK: - Private Properties
    
    private let server: Server
    
    
    
    // MARK: - Construction
    
    public init?(server: Server?) {
        if let server = server {
            self.server = server
        } else {
            return nil
        }
    }
    
    
    
    // MARK: - Functions
    
    public func send<T: Request>(_ request: T, completion: @escaping Completion<T.Response>) {
        guard let url = endpoint(for: request) else {
            completion(.failure(ServiceError.invalidEndpoint))
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.httpMethod.rawValue
        
        if request.httpMethod == .post {
            do {
                urlRequest.httpBody = try JSONEncoder().encode(request)
            } catch {
                completion(.failure(error))
            }
        }
        
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.setValue(server.apikey, forHTTPHeaderField: "X-Api-Key")
        
        let session = URLSession(configuration: .default)
        session.dataTask(with: urlRequest) { data, response, error in
            
            
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                    let dateFormatter = DateFormatter()
                    dateFormatter.locale = Locale(identifier: "en_US_POSIX")
                    dateFormatter.dateFormat = "yyyyMMdd'T'HHmmss.SSSS"
                    
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .custom { decoder -> Date in
                        let container = try decoder.singleValueContainer()
                        let value = try container.decode(String.self)
                        if let date = request.dateFormatter.date(from: value) {
                            return date
                        } else {
                            throw ServiceError.invalidDate
                        }
                    }
                    let model = try decoder.decode(T.Response.self, from: data)
                    
                    completion(.success(model))
                } catch {
                    completion(.failure(error))
                }
            } else {
                completion(.failure(ServiceError.invalidResponse))
            }
        }
        .resume()
    }
    
    
    
    // MARK: - Private Functions
    
    private func endpoint<T: Request>(for request: T) -> URL? {
        guard let url = URL(string: request.endpoint, relativeTo: server.url) else {
            return nil
        }
        
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        if
            (request.httpMethod == .get || request.httpMethod == .delete),
            let queryItems = try? URLQueryItemEncoder.encode(request),
            !queryItems.isEmpty {
            
            components?.queryItems = queryItems
        }
        
        return components?.url
    }
    
}
