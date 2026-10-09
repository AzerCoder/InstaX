//
//  HomeViewController.swift
//  InstaX
//
//  Created by A'zamjon Abdumuxtorov on 10/11/23.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var items : Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initViews()

    }
    // Mark: Methods

    func initViews(){
        tableView.dataSource = self
        tableView.delegate = self
        
        items.append(Post(fullname: "A'zamjon",per_Img: "im_person1",post_Img: "im_post1",post_Img2: "im_post2"))
        items.append(Post(fullname: "Chichek",per_Img: "im_person2",post_Img: "im_post2",post_Img2: "im_post1"))
        items.append(Post(fullname: "Akang kuchaydi",per_Img: "im_person1",post_Img: "im_post3",post_Img2: "im_post1"))
    }
    // Mark: Table View

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        cell.nameLabel.text = item.fullname
        cell.profileImage.image = UIImage(named: item.per_Img!)
        cell.postImage1.image = UIImage(named: item.post_Img!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }

}
