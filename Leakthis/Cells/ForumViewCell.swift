//
//  ForumViewCell.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/22/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//
import Foundation
import UIKit

class ForumViewCell: UITableViewCell  {

    @IBOutlet weak var iForumSection: UILabel!
    @IBOutlet weak var iForumSectionDescription: UILabel!
    @IBOutlet weak var iTableView: UITableView!
    
    var threads: [LeakThisForum.ForumThread] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let nib = UINib.init(nibName: "ThreadForumViewCell", bundle: nil)
        self.iTableView.register(nib, forCellReuseIdentifier: "ThreadForumViewCell")
        self.iTableView.dataSource = self
        self.iTableView.delegate = self
        self.iTableView.rowHeight = UITableView.automaticDimension
        self.iTableView.estimatedRowHeight = 600
    }

    
    func setSection(forum: LeakThisForum){
        self.iForumSection.text = forum.category
        self.iForumSectionDescription.text = forum.description
        self.threads = forum.threads
        iTableView.reloadData()
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


extension ForumViewCell: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threads.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let forum = threads[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ThreadForumViewCell", for: indexPath) as? ThreadForumViewCell {
            print("WORKS")
            cell.iThreadForumTitle.text = forum.title
            cell.iThreadForumDesc.text = forum.description
            //cell.iForumSection.text = forum.category
            //cell.iForumSectionDescription.text = forum.description
            return cell
        }else{
            print("FAILED")
        }
        
        
        return UITableViewCell()
    }
    
    
}
