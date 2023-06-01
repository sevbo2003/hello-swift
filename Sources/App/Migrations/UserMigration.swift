//
//  UserMigration.swift
//  
//
//  Created by Iskandarov shaxzod on 21.03.2023.
//

import Fluent

struct UserMigration: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("users")
            .id()
            .field("name", .string, .required)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("users").delete()
    }
}
