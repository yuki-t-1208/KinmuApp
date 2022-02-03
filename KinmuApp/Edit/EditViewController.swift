//
//  EditViewController.swift
//  KinmuApp
//
//  Created by たかね ゆうき on 2022/01/30.
//

import UIKit

class EditViewController: UIViewController {

    
    @IBAction func edittingButton(_ sender: Any) {
        let goEdit = self.storyboard?.instantiateViewController(withIdentifier: "editting2") as! Edit2ViewController
               self.present(goEdit, animated: true, completion: nil)
    }
    
    @IBOutlet weak var nameLabel: UILabel!
   
     var name = ""
    
    @IBOutlet weak var idLabel: UILabel!
    
     var id = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
        idLabel.text = id
        
        // Do any additional setup after loading the view.
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
