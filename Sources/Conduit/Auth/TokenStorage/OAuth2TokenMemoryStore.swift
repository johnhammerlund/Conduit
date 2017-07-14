//
//  OAuth2TokenMemoryStore.swift
//  Conduit
//
//  Created by John Hammerlund on 8/2/16.
//  Copyright © 2017 MINDBODY. All rights reserved.
//

import Foundation

/// An in-memory token store that lives as long as the consuming executable
public class OAuth2TokenMemoryStore: OAuth2TokenStore {

    private var tokens: [String:OAuth2Token] = [:]

    /// Creates a new OAuth2TokenMemoryStore
    public init() {}

    private func tokenKeyFor(client: OAuth2ClientConfiguration, authorization: OAuth2Authorization) -> String {
        let authorizationLevel = authorization.level == .user ? "user-token" : "client-token"
        return "\(client.clientIdentifier).\(authorizationLevel).\(authorization.type)"
    }

    @discardableResult
    public func store(token: OAuth2Token?, for client: OAuth2ClientConfiguration,
                      with authorization: OAuth2Authorization) -> Bool {
        let tokenKey = tokenKeyFor(client: client, authorization: authorization)
        logger.debug("Storing token to memory with key: \(tokenKey)")
        tokens[tokenKeyFor(client: client, authorization: authorization)] = token
        return true
    }

    public func tokenFor(client: OAuth2ClientConfiguration, authorization: OAuth2Authorization) -> OAuth2Token? {
        return tokens[tokenKeyFor(client: client, authorization: authorization)]
    }

}
