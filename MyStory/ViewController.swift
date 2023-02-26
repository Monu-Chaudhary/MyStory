//
//  ViewController.swift
//  MyStory
//
//  Created by Monu Chaudhary on 2/25/23.
//

import UIKit

class ViewController: UIViewController {

    let shiva = ShivaShakti(image: UIImage(named: "shiva")!, title: "What is Shiva?", description: "Shiva is the embodument of consciousness. Shiva is the stillness, the gap between breaths, the emtyness, and all that is formless. Shiva is pure potential where all things can manifest.")
    let shakti = ShivaShakti(image: UIImage(named: "shakti")!, title: "What is Shakti?", description: "Shakti is the power that fuels everything. She is the feminine energy, the fire, and all that manifests.")
    let shivashakti = ShivaShakti(image: UIImage(named: "shiva-shakti")!, title: "What is Shiva Shakti?", description: "Shiva Shakti are two complementary forces of the universe that creates balance and harmony. Shiva  It depicts nirvana - union of consciousness with energy.")
    let importance = ShivaShakti(image: UIImage(named: "nirvana")!, title: "Why is Shiva Shakti important?", description: "Shakti needs Shiva to remain grounded, otherwise she becomes chaotic. Shiva without Shakti is inert and sterile. Shiva and shakti complete each other.")

    
    var contexts: [ShivaShakti] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contexts = [shiva, shakti, shivashakti, importance]
    }

    @IBAction func didClickButton(_ sender: UIButton) {
         performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIButton,
            let detailViewController = segue.destination as? DetailViewController {
            print(tappedView.tag)
            if tappedView.tag == 0 {
                detailViewController.context = contexts[0]
            } else if tappedView.tag == 1 {
                detailViewController.context = contexts[1]
            } else if tappedView.tag == 2 {
                detailViewController.context = contexts[2]
            } else if tappedView.tag == 3 {
                detailViewController.context = contexts[3]
            } else {
                print("no context was clicked, please check your selection.")
            }
        }
    }
    
}

