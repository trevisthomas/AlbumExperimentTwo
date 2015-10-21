//
//  TTGenreViewController.swift
//  Album Experiment Two
//
//  Created by Trevis Thomas on 10/20/15.
//  Copyright © 2015 Trevis Thomas. All rights reserved.
//

import UIKit

class TTGenreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private let genreCellIdentifier = "GenreCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var containerViewNavigationController : UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: genreCellIdentifier)

        containerViewNavigationController.navigationBar.topItem?.title = "Can you hear me now?"
        
        let buttonItem = UIBarButtonItem(title: "Test", style: UIBarButtonItemStyle.Plain, target: self, action: "leftNavButtonPress")
        
        containerViewNavigationController.navigationBar.topItem?.leftBarButtonItem = buttonItem
    //    containerViewNavigationController.navigationItem.rightBarButtonItems?.append(buttonItem)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    
//    func leftNavButtonClick(sender:UIButton!)
//    {
//        print("Ouch")
//    }
    
    func leftNavButtonPress(){
        print("leftNavButtonPress")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //        let query = MPMediaQuery.genresQuery()
        //        return (query.collections?.count)! //Maybe you should check and show a meaningfull error.
//        return genres!.count
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(genreCellIdentifier, forIndexPath: indexPath)
        cell.textLabel!.text = "Test \(indexPath.row)"
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        <#code#>
    }
}
