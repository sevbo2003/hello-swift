//
//  File.swift
//  
//
//  Created by Iskandarov shaxzod on 21.03.2023.
//

import Fluent
import Vapor

struct UserController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let user = routes.grouped("user")
        
    }
}
