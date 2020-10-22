//
//  LeakThisProfile.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/22/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct LeakThisProfile {
    let id: Int
    let name: String
    let user_title: String?
    let avatar: String?
    let dob_month: String?
    let dob_day: String?
    let dob_year: String?
    let about_html: String?
    let option: OptionField
    let custom_fields: ProfileSocialField
    let profile: ProfileField
    
    
    struct ProfileField {
        let location: String?
        let website: String?
    }

    struct ProfileSocialField {
        let Instagram: String?
        let Reddit: String?
        let Discord: String?
        let LastFM: String?
        let skype: String?
        let twitter: String?
    }

    struct OptionField {
        let show_dob_date: String?
        let receive_admin_email: String?
    }
}
