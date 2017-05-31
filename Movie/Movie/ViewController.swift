//
//  ViewController.swift
//  Movie
//
//  Created by Marcelo Mogrovejo on 5/31/17.
//  Copyright © 2017 Marcelo Mogrovejo. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var coreData = CoreDataStack()
    var managedObjectContext: NSManagedObjectContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Class Definition
//        let movie = Movie(context: managedObjectContext)
//        let name = movie.title
        
        
        // Category/Extension
        let movie = Movie(context: coreData.persistentContainer.viewContext)
        let movies = movie.getMovieInfo(title: "X-Men", context: coreData.persistentContainer.viewContext)
        
        if movies != nil {
            print(movie.format!)
        } else {
            print("No movie info is found")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

