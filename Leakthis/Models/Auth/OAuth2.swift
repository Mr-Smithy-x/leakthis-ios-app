//
//  OAuth2.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/22/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct OAuth {
    let token_type: String
    let expires_in: Int
    let access_token: String
    let refresh_token: String
}
