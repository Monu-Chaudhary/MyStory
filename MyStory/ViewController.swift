//
//  ViewController.swift
//  MyStory
//
//  Created by Monu Chaudhary on 2/25/23.
//

import UIKit

class ViewController: UIViewController {

    let about = ShivaShakti(name: "Shiva Shakti", image: UIImage(named: "moon")!, location: "Himalayas", title: "Who am I?", description: "I am a devine power who live on Himalayas. I am also known as Mahadev - God of Gods. I live a ascetic life away from all the materialistic pleasures. I wear tiger skin around my waist. I have snake rapped around my neck and Ganga - holy water fountain originating from my hair. I have a damaru on my one hand and a trishul on my other hand. I am the destroyer of evil. My third eye opens and I start dancing Tandav when I am angry. I am also called Bholenath - the kind God because it is easy to please me and I am very much generoug towards my devotees.")
    let background = ShivaShakti(name: "Shiva Shakti", image: UIImage(named: "moon")!, location: "Himalayas", title: "What is my background?", description: "BG")
    let powers = ShivaShakti(name: "Shiva Shakti", image: UIImage(named: "moon")!, location: "Himalayas", title: "What are my powers?", description: "POWERS")

    
    var contexts: [ShivaShakti] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contexts = [about, background, powers]
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
            } else {
                print("no Dinosaur was tapped, please check your selection.")
            }
        }
    }
    
}

