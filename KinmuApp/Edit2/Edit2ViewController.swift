//
//  Edit2ViewController.swift
//  KinmuApp
//
//  Created by たかね ゆうき on 2022/01/30.
//

import UIKit
import Firebase

final class Edit2ViewController: UIViewController {

    var ref : DocumentReference
    
    @IBOutlet weak var nameText: UITextField!
    
    
    @IBOutlet weak var IdText: UITextField!
    
    
    @IBAction func backButton(_ sender: Any) {
        let backView = self.storyboard?.instantiateViewController(withIdentifier: "editting") as! EditViewController
                backView.name = nameText.text!
                self.navigationController?.pushViewController(backView, animated: true)
     
        let back2View = self.storyboard?.instantiateViewController(withIdentifier: "editting") as! EditViewController
                back2View.id = IdText.text!
                self.navigationController?.pushViewController(back2View, animated: true)
     
        
        //databaseに保存
        guard let name2Text = nameText.text, !name2Text.isEmpty else { return }
        guard let id2Text = IdText.text, !id2Text.isEmpty else { return }
        
        let saveDate: [String:Any] = ["name": name2Text,"id": id2Text]
        
        ref.setData(saveDate){ (error) in
            if error != nil {
                print("入力してください")
        }
        
        }
        
    }
    
    
   override func viewDidLoad() {
        super.viewDidLoad()

      
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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

