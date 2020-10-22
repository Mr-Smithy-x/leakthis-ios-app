//
//  LeakThisConversation.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/22/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct LeakThisConversation {
    let conversation_id: String
    let user: LeakThisUser.Lite
    let link: String
    let title: String
    let started_at: Int?
    let last_message_at: Int?
    let last_message_by: String?
    let replied: String?
    let participants: String?


    func getRealConversationId() -> String {
        let index = conversation_id.firstIndex(where: { (character) in character == "."}) ?? conversation_id.startIndex
        return conversation_id.substring(from: index)
    }

    struct LeakThisMessageContainer {
        let title: String
        let created: Int64?
        let created_formatted: String?
        let messages: [LeakThisMessage]
    }

    struct LeakThisMessage {
        let id: String
        let user: LeakThisUser.Lite
        let message: String
        let message_html: String
        let created: Int64
        let created_formatted: String
    }
}
