//
//  ViewController.swift
//  FirstTry
//
//  Created by hsuanchi on 2019/4/24.
//  Copyright © 2019年 hsuanchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    
    var sceneArray=["screen1","screen2","screen3"];
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    
    //每個Section裡面會有幾列
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sceneArray.count
    }
    
    //設定cell要顯示的內容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text=sceneArray[indexPath.row]
        return cell!
        
            }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.black
        aTableView.delegate=self
        aTableView.dataSource=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var aTableView: UITableView!
}

