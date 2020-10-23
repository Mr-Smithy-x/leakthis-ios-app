//
//  LeakThisResponse.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/22/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation

struct LeakThisResponse<T, E> {
    let status: Int
    let message: String?
    let data: T?
    let meta: LeakThisPagination?
    let extra: E?
    let error: String?
}
