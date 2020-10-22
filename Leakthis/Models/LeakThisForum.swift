//
//  LeakThisForum.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/22/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct LeakThisForum {
    let category: String
    let description: String?
    let threads: [ForumThread]
    
    struct ForumThread{
        let title: String
        let description: String?
        let thread: String?
        let latest: LatestThread
        let sub_forums: [SubForum]
    }

    struct LatestThread{
        let user: LeakThisUser.Lite
        let link: String
        let title: String
        let thread_id: String
        let thread_post: String
        let created: Int
        let created_formatted: String
    }

    struct SubForum{
        let title: String
        let link: String
        let forum_id: String
    }



    struct ThreadPost{
        let user: LeakThisUser.Lite
        let thread_id: Int
        let post_id: Int
        let body: String
        let body_html: String
        let links: [Link]
        let created: Int64
        let created_formatted: String
    }


    struct Song{
        let user: LeakThisUser.Lite
        let thread: String
        let artist: String
        let song: String
        let link: String
        let links: [Link]
        let created: Int
        let created_formatted: String
    }
    
    struct Link {
        let title: String?
        let link: String?
    }
}
