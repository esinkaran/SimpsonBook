//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Esin Karan on 16.01.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!

//    Variables
    var simpsons = [Simpson]()
    var name = String()
    var job = String()
    var image = UIImage()
    
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
//        Simpson Objects
        
        let lisa = Simpson(name: "Lisa Simpson",job: "Student", image : UIImage(named: "lisa")!)
        let bart = Simpson(name: "Bart Simpson",job: "Student", image : UIImage(named: "bart")!)
        let marge = Simpson(name: "Marge Simpson",job: "Housewife", image : UIImage(named: "marge")!)
        let homer = Simpson(name: "Homer Simpson",job: "Nuclear Safety", image : UIImage(named: "homer")!)
        
        simpsons.append(lisa)
        simpsons.append(bart)
        simpsons.append(marge)
        simpsons.append(homer)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsons.count
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenSimpson = simpsons[indexPath.row]

        self.performSegue(withIdentifier: "detailsSegue", sender: self)
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsons[indexPath.row].name
        
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsSegue"{
            
            let destination = segue.destination as? detailsVC
            
            destination?.simpson = chosenSimpson
            
            
        }
    }


}

