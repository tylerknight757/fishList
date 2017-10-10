//
//  TableViewController.swift
//  fishList
//
//  Created by Tyler Knight on 10/2/17.
//  Copyright © 2017 Tyler Knight. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var items = [FishItem]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        

            let item = items[indexPath.row]
            
            cell.textLabel?.text = item.title
            cell.detailTextLabel?.text = item.subtitle
            
            if let imageView = cell.imageView, let itemImage = item.image {
                imageView.image = itemImage
            } else {
                cell.imageView?.image = nil
            }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        
            return .delete
        }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
       
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let itemToMove = items[sourceIndexPath.row]
        
        items.remove(at: sourceIndexPath.row)
        items.insert(itemToMove, at: destinationIndexPath.row)
    
    }
    
    func addTapped(sender: UIBarButtonItem){
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
        
        navigationItem.rightBarButtonItem = editButtonItem
        
        automaticallyAdjustsScrollViewInsets = false
        
        for i in 1...53 {
            if i == 1 {items.append(FishItem(title: "Red Drum", subtitle: "Sciaenops ocellatus", imageName: "redDrum.jpg"))}
            if i == 2 {items.append(FishItem(title: "Black Drum", subtitle: "Sciaenops ocellatus", imageName: "blackDrum.jpg"))}
            if i == 3 {items.append(FishItem(title: "Croaker", subtitle: "Sciaenops ocellatus", imageName: "croaker.jpg"))}
            if i == 4 {items.append(FishItem(title: "Goliath Grouper", subtitle: "Sciaenops ocellatus", imageName: "goliathGrouper.jpg"))}
            if i == 5 {items.append(FishItem(title: "Speckled Trout", subtitle: "Sciaenops ocellatus", imageName: "speckledTrout.jpg"))}
            if i == 6 {items.append(FishItem(title: "Gray Trout", subtitle: "Sciaenops ocellatus", imageName: "grayTrout.jpg"))}
            if i == 7 {items.append(FishItem(title: "Perch", subtitle: "Sciaenops ocellatus", imageName: "perch.jpg"))}
            if i == 8 {items.append(FishItem(title: "Striped Bass", subtitle: "Sciaenops ocellatus", imageName: "stripedBass.jpg"))}
            if i == 9 {items.append(FishItem(title: "Bluefish", subtitle: "Sciaenops ocellatus", imageName: "bluefish.jpg"))}
            if i == 10 {items.append(FishItem(title: "Flounder", subtitle: "Sciaenops ocellatus", imageName: "flounder.jpg"))}
            if i == 11 {items.append(FishItem(title: "Cobia", subtitle: "Sciaenops ocellatus", imageName: "cobia.jpg"))}
            if i == 12 {items.append(FishItem(title: "Tautog", subtitle: "Sciaenops ocellatus", imageName: "tautog.jpg"))}
            if i == 13 {items.append(FishItem(title: "Black Sea Bass", subtitle: "Sciaenops ocellatus", imageName: "blackSeaBass.jpg"))}
            if i == 14 {items.append(FishItem(title: "Hogfish", subtitle: "Sciaenops ocellatus", imageName: "hogfish.jpg"))}
            if i == 15 {items.append(FishItem(title: "Permit", subtitle: "Sciaenops ocellatus", imageName: "permit.jpg"))}
            if i == 16 {items.append(FishItem(title: "Sheepshead", subtitle: "Sciaenops ocellatus", imageName: "sheepshead.jpg"))}
            if i == 17 {items.append(FishItem(title: "Spadefish", subtitle: "Sciaenops ocellatus", imageName: "spadefish.jpg"))}
            if i == 18 {items.append(FishItem(title: "Triggerfish", subtitle: "Sciaenops ocellatus", imageName: "triggerfish.jpg"))}
            if i == 19 {items.append(FishItem(title: "Sturgeon", subtitle: "Sciaenops ocellatus", imageName: "sturgeon.jpg"))}
            if i == 20 {items.append(FishItem(title: "Bonefish", subtitle: "Sciaenops ocellatus", imageName: "bonefish.jpg"))}
            if i == 21 {items.append(FishItem(title: "Snook", subtitle: "Sciaenops ocellatus", imageName: "snook.jpg"))}
            if i == 22 {items.append(FishItem(title: "Red Snapper", subtitle: "Sciaenops ocellatus", imageName: "redSnapper.jpg"))}
            if i == 23 {items.append(FishItem(title: "Dog Snapper", subtitle: "Sciaenops ocellatus", imageName: "dogSnapper.jpg"))}
            if i == 24 {items.append(FishItem(title: "Barracuda", subtitle: "Sciaenops ocellatus", imageName: "barracuda.jpg"))}
            if i == 25 {items.append(FishItem(title: "Tarpon", subtitle: "Sciaenops ocellatus", imageName: "tarpon.jpg"))}
            if i == 26 {items.append(FishItem(title: "Tripletail", subtitle: "Sciaenops ocellatus", imageName: "tripletail.jpg"))}
            if i == 27 {items.append(FishItem(title: "Ladyfish", subtitle: "Sciaenops ocellatus", imageName: "ladyfish.jpg"))}
            if i == 28 {items.append(FishItem(title: "Gulf Kingfish", subtitle: "Sciaenops ocellatus", imageName: "gulfKingfish.jpg"))}
            if i == 29 {items.append(FishItem(title: "Greater Amberjack", subtitle: "Sciaenops ocellatus", imageName: "greaterAmberjack.jpg"))}
            if i == 30 {items.append(FishItem(title: "Banded Rudderfish", subtitle: "Sciaenops ocellatus", imageName: "bandedRudderfish.jpg"))}
            if i == 31 {items.append(FishItem(title: "Almaco Jack", subtitle: "Sciaenops ocellatus", imageName: "almacoJack.jpg"))}
            if i == 32 {items.append(FishItem(title: "Crevalle Jack", subtitle: "Sciaenops ocellatus", imageName: "crevalleJack.jpg"))}
            if i == 33 {items.append(FishItem(title: "Blue Runner", subtitle: "Sciaenops ocellatus", imageName: "blueRunner.jpg"))}
            if i == 34 {items.append(FishItem(title: "Pompano", subtitle: "Sciaenops ocellatus", imageName: "pompano.jpg"))}
            if i == 35 {items.append(FishItem(title: "Blue Marlin", subtitle: "Sciaenops ocellatus", imageName: "blueMarlin.jpg"))}
            if i == 36 {items.append(FishItem(title: "White Marlin", subtitle: "Sciaenops ocellatus", imageName: "whiteMarlin.jpg"))}
            if i == 37 {items.append(FishItem(title: "Sailfish", subtitle: "Sciaenops ocellatus", imageName: "sailfish.jpg"))}
            if i == 38 {items.append(FishItem(title: "Longbill Spearfish", subtitle: "Sciaenops ocellatus", imageName: "longbillSpearfish.jpg"))}
            if i == 39 {items.append(FishItem(title: "Mahi-Mahi", subtitle: "Sciaenops ocellatus", imageName: "mahiMahi.jpg"))}
            if i == 40 {items.append(FishItem(title: "Wahoo", subtitle: "Sciaenops ocellatus", imageName: "wahoo.jpg"))}
            if i == 41 {items.append(FishItem(title: "King Mackerel", subtitle: "Sciaenops ocellatus", imageName: "kingMackerel.jpg"))}
            if i == 42 {items.append(FishItem(title: "Spanish Mackerel", subtitle: "Sciaenops ocellatus", imageName: "spanishMackerel.jpg"))}
            if i == 43 {items.append(FishItem(title: "Cero Mackerel", subtitle: "Sciaenops ocellatus", imageName: "ceroMackerel.jpg"))}
            if i == 44 {items.append(FishItem(title: "False Albacore", subtitle: "Sciaenops ocellatus", imageName: "falseAlbacore.jpg"))}
            if i == 45 {items.append(FishItem(title: "Atlantic Bonito", subtitle: "Sciaenops ocellatus", imageName: "atlanticBonito.jpg"))}
            if i == 46 {items.append(FishItem(title: "Skipjack Tuna", subtitle: "Sciaenops ocellatus", imageName: "skipjackTuna.jpg"))}
            if i == 47 {items.append(FishItem(title: "Bluefin Tuna", subtitle: "Sciaenops ocellatus", imageName: "bluefinTuna.jpg"))}
            if i == 48 {items.append(FishItem(title: "Yellowfin Tuna", subtitle: "Sciaenops ocellatus", imageName: "yellowfinTuna.jpg"))}
            if i == 49 {items.append(FishItem(title: "Bigeye Tuna", subtitle: "Sciaenops ocellatus", imageName: "bigeyeTuna.jpg"))}
            if i == 50 {items.append(FishItem(title: "Albacore", subtitle: "Sciaenops ocellatus", imageName: "albacore.jpg"))}
            if i == 51 {items.append(FishItem(title: "White Grunt", subtitle: "Sciaenops ocellatus", imageName: "whiteGrunt.jpg"))}
            if i == 52 {items.append(FishItem(title: "Blacktip Shark", subtitle: "Sciaenops ocellatus", imageName: "blacktipShark.jpg"))}
            if i == 53 {items.append(FishItem(title: "Sandbar Shark", subtitle: "Sciaenops ocellatus", imageName: "sandbarShark.jpg"))}
            
            }
        }
        
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        
        if editing {
            tableView.setEditing(true, animated: true)
        } else {
            tableView.setEditing(false, animated: true)
        }
    }

}
