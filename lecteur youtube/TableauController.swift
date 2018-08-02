//
//  TableauController.swift
//  lecteur youtube
//
//  Created by Letoret Hugo on 2/08/18.
//  Copyright © 2018 Letoret Hugo. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    
    var chansons = [chanson]()
    
    let identifiantCell = "ChansonCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        ajouterChanson()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? chansonCell {
            cell.creerCell(chanson)
            return cell 
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    func ajouterChanson() {
        chansons = [chanson]()
            let cool = chanson(artiste: "Casseurs Flowters", titre: "Ils sont cools", code: "_DT-4-jJTZc")
            chansons.append(cool)
            let bien  = chanson(artiste: "Orelsan", titre: "tout va bien", code: "dq6G2YWoRqA")
            chansons.append(bien)
            let basique = chanson(artiste: "Orelsan", titre: "Basique", code: "2bjk26RwjyU")
            chansons.append(basique)
            let ronde = chanson(artiste: "Orelsan", titre: "La terre est ronde", code: "oGdhZyS2ozo")
            chansons.append(ronde)
            let san = chanson(artiste: "Orelsan", titre: "San", code: "PejyoeG_TmA")
            chansons.append(san)
            let seul = chanson(artiste: "Orelsan", titre: "Si seul", code: "cz-PLtXh7Lo")
            chansons.append(seul)
            let inacheves = chanson(artiste: "Casseurs Flowteurs", titre: "Inachevés", code: "MW1eQZ_PEb4")
            chansons.append(inacheves)
        
        TableView.reloadData()
    }
    
}
