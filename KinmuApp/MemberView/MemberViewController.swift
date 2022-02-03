//
//  MemberViewController.swift
//  KinmuApp
//
//  Created by たかね ゆうき on 2022/01/29.
//

import UIKit
import Firebase

class MemberViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    var memberDataArray:[memberNameData] = []

    func getData() {

        //データがあるコレクションを指定
        let Ref = Firestore.firestore().collection("memberName")

        //getDocumentsでデータを取得
        Ref.getDocuments() { (querySnapshot, error) in
               if let error = error {
                   print(error)
                   return
               }

               //querySnapshotにドキュメントデータが配列になって入っている。
               self.memberDataArray = querySnapshot!.documents.map { document in
               let data = memberNameData(document: document)
               return data
               }

    }
    
    
    }


    override func viewDidLoad() {
        super.viewDidLoad()

      
    }


    //セルの数を決める
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return self.memberDataArray.count
       }
       
    //セルの中身を決める
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "memberNameCell")
           cell.memberNameData = self.memberDataArray[indexPath.row]
           return cell
       }

}
