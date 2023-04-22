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
    // Элемент окна вывода
    @IBOutlet var inputLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Пользовательские тексты для элементов
        mainLabel.text = "Calculator"
        inputLabel.text = ""
        setOneButton.setTitle("[Enter]", for: .normal) // Обычное состояние
        setOneButton.setTitle("[OK]", for: .highlighted) // Нажатая кнопка
        
        // Вызов метода, при нажатии кнопки
        setOneButton.addTarget(self, action: #selector(didTapGetEnterButton), for: .touchUpInside)
        // terget=self - нажатие от кнопки приходит в текущий ViewController
        // Selector=#selector - (название метода)
        // action=touchUpInside - нажатие на кнопку и затем релиз кнопки (нажали/отпустили)
    }
    
    // Метод выполняемый по нажатии кнопки
    @objc func didTapGetEnterButton() {
        
        inputLabel.text = "Tapped Button Enter"
        print("[INFO Log] Tapped Button Enter & displaying information on the screen")
    }


}

