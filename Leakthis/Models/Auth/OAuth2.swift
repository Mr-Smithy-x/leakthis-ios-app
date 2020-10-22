//
//  OAuth2.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/22/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

// following url will generate an oauth token upon request
// POST - http://lt.charltonsmith.nyc:6690/api/v1/auth/guest
// You should be able to authorize a user with this object.
// your task is to implement just that.
// I did mention that this implementation should be seamless, what does that mean?
// OAuth2 is designed to generate tokens for security purposes and to identify the user
// Once an oauth token has expired, the access_token is no longer valid and the user is
// logged out... but is he really logged out? the answer is no because OAuth2 has a
// refresh token. The refresh token allows the user to generate a new access token.
// so with this knowledge you should be able to authorize the user, and if the token has
// expired, you should initiate an automatic refresh by sending the refresh token to this
// route
// POST - http://lt.charltonsmith.nyc/6690/api/v1/auth/refresh
// recommended that you create some way to store this information for later use that way
// you can complete the requirements
// Use that token to call http://lt.charltonsmith.nyc:6690/api/v1/leakthis/conversations
// and retrieve the conversations
// you have until Oct 25. Good luck!
// Please build a Simple Login View, and upon logging in you it should show a new screen
// All models are in this project, figure out how to parse the models that you need to use
struct OAuth {
    let token_type: String
    let expires_in: Int
    let access_token: String
    let refresh_token: String
}
