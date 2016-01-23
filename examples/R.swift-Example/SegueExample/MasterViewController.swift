//
//  MasterViewController.swift
//  SegueExample
//
//  Created by Tom Lokhorst on 2015-03-02.
//  Copyright (c) 2015 Tom Lokhorst. All rights reserved.
//

import UIKit
import SegueManager

class MasterViewController: SegueManagerViewController {

  @IBAction func openDetailAction(sender: UIButton) {
    performSegue(R.segue.masterViewController.showDetail) { segue in
      let detailController = segue.destinationViewController
      detailController.displayText = "This is the detail screen!"
    }
  }
}
