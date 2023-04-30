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
    @IBOutlet var setTwoButton: UIButton!
    @IBOutlet var setThreeButton: UIButton!
    @IBOutlet var setSubButton: UIButton!
    // Элемент окна вывода
    @IBOutlet var inputLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Пользовательские тексты для элементов
        mainLabel.text = "Calculator"
        inputLabel.text = ""
        setOneButton.setTitle("[1]", for: .normal) // Обычное состояние
        setTwoButton.setTitle("[2]", for: .normal)
        setThreeButton.setTitle("[3]", for: .normal)
        setSubButton.setTitle("[+]", for: .normal)
//        setOneButton.setTitle("[OK]", for: .highlighted) // Нажатая кнопка
        
        // Вызов метода, при нажатии кнопки
        setOneButton.addTarget(self, action: #selector(didTapGetOneButton), for: .touchUpInside)
        setTwoButton.addTarget(self, action: #selector(didTapGetTwoButton), for: .touchUpInside)
        setThreeButton.addTarget(self, action: #selector(didTapGetThreeButton), for: .touchUpInside)
        setSubButton.addTarget(self, action: #selector(didTapGetSubButton), for: .touchUpInside)
        // terget=self - нажатие от кнопки приходит в текущий ViewController
        // Selector=#selector - (название метода)
        // action=touchUpInside - нажатие на кнопку и затем релиз кнопки (нажали/отпустили)
    }
    
    // Метод выполняемый по нажатии кнопки
    @objc func didTapGetOneButton() {
        
        setNumOnScreen(num: 1)
        logTapOnButton(nameButton: "One")
    }
    @objc func didTapGetTwoButton() {
        
        setNumOnScreen(num: 2)
        logTapOnButton(nameButton: "Two")
    }
    @objc func didTapGetThreeButton() {
        
        setNumOnScreen(num: 3)
        logTapOnButton(nameButton: "Three")
    }
    @objc func didTapGetSubButton() {
        
        setStringOnScreen(stringButton: "+")
        logTapOnButton(nameButton: "Sub")
    }
    
    // Метод выводящий на экран число по нажатию кнопки
    func setNumOnScreen(num: Int) {
        
        inputLabel.text = String(num)
    }
    
    // Метод выводящий на экран символ по нажатию кнопки
    func setStringOnScreen(stringButton: String) {
        
        inputLabel.text = stringButton
    }
    
    // Логирование нажатия кнопки
    func logTapOnButton(nameButton: String) {
        
        print("[INFO Log] Tapped " + nameButton + " Button & displaying information on the screen")
    }

}

