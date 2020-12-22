//
//  DashboardController.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/22/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation
import UIKit

class DashboardController : UIViewController {
    
    var data: [LeakThisForum] = [
        LeakThisForum.init(
            category: "Nothing",
            description: "Nothing",
            threads: [
                LeakThisForum.ForumThread.init(
                    title: "Test",
                    description: "Test",
                    thread: "Thread",
                    latest: LeakThisForum.LatestThread.init(
                        user: LeakThisUser.Lite.init(id: 0, name: "", avatar: ""),
                        link: "",
                        title: "Latest",
                        thread_id: "id",
                        thread_post: "Hi",
                        created: 0,
                        created_formatted: "Today"
                    ),
                    sub_forums: [
                        LeakThisForum.SubForum.init(
                            title: "Hello",
                            link: "music",
                            forum_id: "id")
                    ]
                ),
                LeakThisForum.ForumThread.init(
                    title: "Test 2",
                    description: "Test 2",
                    thread: "Thread",
                    latest: LeakThisForum.LatestThread.init(
                        user: LeakThisUser.Lite.init(id: 0, name: "", avatar: ""),
                        link: "",
                        title: "Latest",
                        thread_id: "id",
                        thread_post: "Hi",
                        created: 0,
                        created_formatted: "Today"
                    ),
                    sub_forums: [
                        LeakThisForum.SubForum.init(
                            title: "Hello",
                            link: "music",
                            forum_id: "id")
                    ]
                ),
                LeakThisForum.ForumThread.init(
                    title: "Test 3",
                    description: "Test 3",
                    thread: "Thread",
                    latest: LeakThisForum.LatestThread.init(
                        user: LeakThisUser.Lite.init(id: 0, name: "", avatar: ""),
                        link: "",
                        title: "Latest",
                        thread_id: "id",
                        thread_post: "Hi",
                        created: 0,
                        created_formatted: "Today"
                    ),
                    sub_forums: [
                        LeakThisForum.SubForum.init(
                            title: "Hello",
                            link: "music",
                            forum_id: "id")
                    ]
                )
            ]
        ),
        LeakThisForum.init(
            category: "Nothing 2",
            description: "Nothing 2",
            threads: [
                LeakThisForum.ForumThread.init(
                    title: "Test",
                    description: "Test",
                    thread: "Thread",
                    latest: LeakThisForum.LatestThread.init(
                        user: LeakThisUser.Lite.init(id: 0, name: "", avatar: ""),
                        link: "",
                        title: "Latest",
                        thread_id: "id",
                        thread_post: "Hi",
                        created: 0,
                        created_formatted: "Today"
                    ),
                    sub_forums: [
                        LeakThisForum.SubForum.init(
                            title: "Hello",
                            link: "music",
                            forum_id: "id")
                    ]
                ),
                LeakThisForum.ForumThread.init(
                    title: "Test 2",
                    description: "Test 2",
                    thread: "Thread",
                    latest: LeakThisForum.LatestThread.init(
                        user: LeakThisUser.Lite.init(id: 0, name: "", avatar: ""),
                        link: "",
                        title: "Latest",
                        thread_id: "id",
                        thread_post: "Hi",
                        created: 0,
                        created_formatted: "Today"
                    ),
                    sub_forums: [
                        LeakThisForum.SubForum.init(
                            title: "Hello",
                            link: "music",
                            forum_id: "id")
                    ]
                ),
                LeakThisForum.ForumThread.init(
                    title: "Test 3",
                    description: "Test 3",
                    thread: "Thread",
                    latest: LeakThisForum.LatestThread.init(
                        user: LeakThisUser.Lite.init(id: 0, name: "", avatar: ""),
                        link: "",
                        title: "Latest",
                        thread_id: "id",
                        thread_post: "Hi",
                        created: 0,
                        created_formatted: "Today"
                    ),
                    sub_forums: [
                        LeakThisForum.SubForum.init(
                            title: "Hello",
                            link: "music",
                            forum_id: "id")
                    ]
                )
            ]
        )
    ]
    
    @IBOutlet weak var iTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "ForumViewCell", bundle: nil)
        self.iTableView.register(nib, forCellReuseIdentifier: "ForumViewCell")
        self.iTableView.rowHeight = UITableView.automaticDimension
        self.iTableView.estimatedRowHeight = 600
        iTableView.reloadData()
    }
}


extension DashboardController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(data.count)
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let forum = data[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ForumViewCell", for: indexPath) as? ForumViewCell {
            print("WORKS")
            cell.iForumSection.text = forum.category
            cell.iForumSectionDescription.text = forum.description
            cell.setSection(forum: forum)
            return cell
        }else{
            print("FAILED")
        }
        
        
        
        
        //cell.iForumSection.text = "Main"
        //cell.iForumSectionDescription.text = "Here you will find news!"
        
        return UITableViewCell()
    }
    
    
}
