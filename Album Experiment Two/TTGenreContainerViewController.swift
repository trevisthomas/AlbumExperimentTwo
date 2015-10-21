//
//  TTGenreContainerViewController.swift
//  Album Experiment Two
//
//  Created by Trevis Thomas on 10/20/15.
//  Copyright © 2015 Trevis Thomas. All rights reserved.
//

import UIKit

class TTGenreContainerViewController: UIViewController {

    
    /* 
        Trevis you created this class to have a hook into the navigation controller.  Setting the title here gets it done.
    */

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(navigationItem)")
        print("\(navigationController)")
//        let parent = self.parentViewController
//        print("\(parent)")
        
//        print("\(parent?.navigationController)")
        
   //     title = "What Happens"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("Yeah, i get called: \(sender as! TTGenreContainerViewController == self)") //Self?
        print("Destination: \(segue.destinationViewController)") //TGenreViewController
        
        let destination = segue.destinationViewController as! TTGenreViewController
        destination.containerViewNavigationController = self.navigationController
        
     //   segue.destinationViewController.navigationController = self.navigationController
//        let title = segue.destinationViewController.title
//        self.title = title
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
