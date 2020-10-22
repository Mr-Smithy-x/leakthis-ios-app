//
//  LeakThisUser.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/22/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct LeakThisUser {
    let id: Int
    let username: String
    let avatar: String?
    let about: String?
    let about_html: String?
    let signature: String?
    let signature_html: String?
    let birthday: String?
    let website: String?
    let location: String?
    let socials: LeakThisSocial?
    
    
    struct LeakThisSocial {
        let instagram: String?
        let reddit: String?
        let discord: String?
        let last_fm: String?
        let skype: String?
        let twitter: String?
    }
    
    struct Lite {
        let id: Int
        let name: String
        let avatar: String?
    }
}
