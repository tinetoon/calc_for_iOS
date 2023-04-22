//
//  ViewController.swift
//  calc
//
//  Created by Anton Dyuzhakov on 22.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // Элемент лейбла
    @IBOutlet var mainLabel: UILabel!
    
    // Элемент кнопки
    @IBOutlet var setOneButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Пользовательские тексты для элементов
        mainLabel.text = "Calculator"
        setOneButton.setTitle("[Enter]", for: .normal) // Обычное состояние
        setOneButton.setTitle("[OK]", for: .highlighted) // Нажатая кнопка
        
    }


}

