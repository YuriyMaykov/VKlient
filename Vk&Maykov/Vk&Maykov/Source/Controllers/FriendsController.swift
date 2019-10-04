//
//  FriendsController.swift
//  Vk&Maykov
//
//  Created by Юрий on 02/10/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import UIKit

class FriendsController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    var friends: [UserModel] = [
        UserModel(userId: 1, userName: "Щеголев Петр Сергеевич", userAvatar: UIImage(named: "user1")!, userEmail: "user1@uasersmail.ru"),
        UserModel(userId: 2, userName: "Петренко Николай", userAvatar: UIImage(named: "user2")!, userEmail: "user2@uasersmail.ru"),
        UserModel(userId: 3, userName: "Василий Журавликов", userAvatar: UIImage(named: "user3")!, userEmail: "user3@uasersmail.ru"),
        UserModel(userId: 11, userName: "Какой то надоедливый дядька, заспамил своими дурацкими предложениями !", userAvatar: UIImage(named: "Noimage")!, userEmail: "user11@uasersmail.ru"),
        UserModel(userId: 4, userName: "User4", userAvatar: UIImage(named: "user4")!, userEmail: "user4@uasersmail.ru"),
        UserModel(userId: 5, userName: "User5", userAvatar: UIImage(named: "user5")!, userEmail: "user5@uasersmail.ru"),
        UserModel(userId: 6, userName: "User6", userAvatar: UIImage(named: "user6")!, userEmail: "user6@uasersmail.ru"),
        UserModel(userId: 7, userName: "User7", userAvatar: UIImage(named: "user7")!, userEmail: "user7@uasersmail.ru"),
        UserModel(userId: 8, userName: "User8", userAvatar: UIImage(named: "user8")!, userEmail: "user8@uasersmail.ru"),
        UserModel(userId: 9, userName: "User9", userAvatar: UIImage(named: "user9")!, userEmail: "user9@uasersmail.ru"),
        UserModel(userId: 10, userName: "User10", userAvatar: UIImage(named: "user10")!, userEmail: "user10@uasersmail.ru")
    ]
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as! FriendsCell
        cell.friendNameLabel.text = friends[indexPath.row].userName
        cell.friendAvatar.image = friends[indexPath.row].userAvatar
        return cell
    }

    // MARK: - Table view delegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
