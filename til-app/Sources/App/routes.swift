import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    router.post("api", "acronyms") { req -> Future<Acronym> in
        // decode the request's JSON into an Acronym model (using Codable)
        return try req.content.decode(Acronym.self)
            // a flatMap(to:) is used since the previous operation returns a Future<Acronym>
            .flatMap(to: Acronym.self, { acronym in
                // the model is saved using Fluent (the return type of this operation is also a Future<Acronym>)
                print(">> Saving acronym: \(acronym)")
                return acronym.save(on: req)
            })
    }

}
