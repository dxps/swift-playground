import Vapor
import FluentSQLite

// Besides conforming to Codable protocol, the class is marked as final for performance reasons.

final class Acronym: Codable {
    
    /// The identifier of this model.
    var id: Int?
    /// The acronym itself.
    var label: String
    /// The description (meaning) of the acronym.
    var description: String
    
    init(label: String, description: String) {
        self.label = label
        self.description = description
    }
    
}

// Making it conformant with Fluent's SQLiteModel.
extension Acronym: SQLiteModel { }

/*
If using Fluent's generic Model, the following elements would have to be specified:
extension Acronym: Model {
    // the database used
    typealias Database = SQLiteDatabase
    // the identifier's data type
    typealias ID = Int
    // the key path of the model's ID property
    public static var idKey: IDKey = \Acronym.id
}
*/

extension Acronym: Migration { }

extension Acronym: Content { }

