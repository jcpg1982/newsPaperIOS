//
//  NotesFavoriteDatabaseRepositoryImpl.swift
//  Database
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import SwiftData
import SwiftUICore

public class NotesFavoriteDatabaseRepositoryImpl: NotesFavoriteDatabaseRepository {
    
    /*private let database = Database.shared
    
    public func isFavoriteNote(serverId: String) async throws -> Result<Bool, any Error> {
        do {
            let isExist = try await database.performMainContextTask { context in
                let descriptor = FetchDescriptor<FavoriteNoteDatabase>(
                    predicate: #Predicate { $0.idServer == serverId }
                )
                let notes = try context.fetch(descriptor)
                return !notes.isEmpty
            }
            return .success(isExist)
        } catch {
            return .failure(error)
        }
    }
    
    
    public func saveFavoriteNote(item: FavoriteNoteDatabase) async throws -> Result<Bool, any Error> {
        do {
            try await database.performMainContextTask { context in
                context.insert(item)
                try context.save()
            }
            return .success(true)
        } catch {
            return .failure(error)
        }
    }
    
    
    public func deleteFavoriteNote(serverId: String) async throws -> Result<Bool, any Error> {
        do {
            try await database.performMainContextTask { context in
                let descriptor = FetchDescriptor<FavoriteNoteDatabase>(
                    predicate: #Predicate { $0.idServer == serverId }
                )
                if let noteToDelete = try context.fetch(descriptor).first {
                    context.delete(noteToDelete)
                    try context.save()
                }
            }
            return .success(true)
        } catch {
            return .failure(error)
        }
    }
    
    
    public func getFavoriteNotes(serverId: String) async throws -> Result<[FavoriteNoteDatabase], any Error> {
        do {
            let notes = try await database.performMainContextTask { context in
                let descriptor = FetchDescriptor<FavoriteNoteDatabase>(
                    predicate: #Predicate { $0.idServer == serverId }
                )
                return try context.fetch(descriptor)
            }
            return .success(notes)
        } catch {
            return .failure(error)
        }
    }*/

}
