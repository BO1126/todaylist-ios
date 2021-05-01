//
//  ViewController.swift
//  TodayList
//
//  Created by 이정우 on 2021/04/17.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView : UITableView!
    
    let cellIdentifier : String = "todocell"
    
    let todayToDo : [String] = ["빨래","swift 공부","철권"]
    
    let weekToDO : [String] = ["술마시러가기","todolist 앱 개발","구체적인 기획서 작성하기"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return todayToDo.count
        case 1:
            return weekToDO.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
        
        let text: String = indexPath.section == 0 ? todayToDo[indexPath.row] : weekToDO[indexPath.row]
        
        cell.textLabel?.text = text
        
        
        return cell
    }
  
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "오늘 할 일" : "이번주 할 일"
    }


}

