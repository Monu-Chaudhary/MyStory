//
//  ViewController.swift
//  MyStory
//
//  Created by Monu Chaudhary on 2/25/23.
//

import UIKit

class ViewController: UIViewController {

    let about = ShivaShakti(name: "Shiva Shakti", image: UIImage(named: "moon")!, location: "Himalayas", title: "What is Shiva?", description: "I am a devine power who lives on Himalayas.  I wear tiger skin around my waist. I have snake rapped around my neck and Ganga - holy water fountain originating from my hair. I have a damaru on my one hand and a trishul on my other hand.")
    let background = ShivaShakti(name: "Shiva Shakti", image: UIImage(named: "moon")!, location: "Himalayas", title: "What am I known as?", description: "I am known as Mahadev - God of Gods. I live a ascetic life away from all the materialistic pleasures. I am also called Bholenath - the kind God because it is easy to please me and I am very much generoug towards my devotees.")
    let shiva = ShivaShakti(name: "Shiva Shakti", image: UIImage(named: "moon")!, location: "Himalayas", title: "What is Shiva?", description: "Shiva is the embodument of consciousness. Shiva is the stillness, the gap between breaths, the emtyness, and all that is formless. Shiva is pure potential where all things can manifest.")
    let shakti = ShivaShakti(name: "Shiva Shakti", image: UIImage(named: "moon")!, location: "Himalayas", title: "What is Shakti?", description: "Shakti is the power that fuels everything. She is the feminine energy, the fire, and all that manifests.")

    
    var contexts: [ShivaShakti] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contexts = [about, background, shiva, shakti]
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

