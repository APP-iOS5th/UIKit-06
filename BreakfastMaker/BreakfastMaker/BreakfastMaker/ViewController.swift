//
//  ViewController.swift
//  BreakfastMaker
//
//  Created by iOS 15 Programming on 24/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var toastLabel: UILabel!
    @IBOutlet var eggLabel: UILabel!
    @IBOutlet var sandwichLabel: UILabel!
    @IBOutlet var elapsedTimeLabel: UILabel!
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Task {
            let startTime = Date().timeIntervalSince1970
            toastLabel.text = "Making toast..."
            toastLabel.text = await makeToast()
            eggLabel.text = "Poaching eggs..."
            eggLabel.text = await poachEgg()
            sandwichLabel.text = makeSandwich()
            let endTime = Date().timeIntervalSince1970
            elapsedTimeLabel.text = "Elapsed time is \(((endTime - startTime) * 100).rounded() / 100) seconds"
        }
    }
    
    func makeToast() async -> String {
        try? await Task.sleep(nanoseconds: 2 * 1_000_000_000)
        return "Toast done"
    }
    
    func poachEgg() async -> String {
        try? await Task.sleep(nanoseconds: 6 * 1_000_000_000)
        return "Egg done"
    }
    
    func makeSandwich() -> String {
        return "Sandwich done"
    }
    
    @IBAction func testButton(_ sender: UIButton) {
        print("Button tapped")
    }
    
}

