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
    @IBOutlet var setSevenButton: UIButton!
    @IBOutlet var setEightButton: UIButton!
    @IBOutlet var setNineButton: UIButton!
    @IBOutlet var setDivideButton: UIButton!
    @IBOutlet var setFourButton: UIButton!
    @IBOutlet var setFiveButton: UIButton!
    @IBOutlet var setSixButton: UIButton!
    @IBOutlet var setMultiplyButton: UIButton!
    @IBOutlet var setOneButton: UIButton!
    @IBOutlet var setTwoButton: UIButton!
    @IBOutlet var setThreeButton: UIButton!
    @IBOutlet var setSubButton: UIButton!
    @IBOutlet var setZeroButton: UIButton!
    @IBOutlet var setDotButton: UIButton!
    @IBOutlet var setEqualButton: UIButton!
    @IBOutlet var setMinusButton: UIButton!
    // Элемент окна вывода
    @IBOutlet var inputLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Пользовательские тексты для элементов
        mainLabel.text = "Calculator"
        inputLabel.text = ""
        setSevenButton.setTitle("[7]", for: .normal)
        setEightButton.setTitle("[8]", for: .normal)
        setNineButton.setTitle("[9]", for: .normal)
        setDivideButton.setTitle("[/]", for: .normal)
        setFourButton.setTitle("[4]", for: .normal)
        setFiveButton.setTitle("[5]", for: .normal)
        setSixButton.setTitle("[6]", for: .normal)
        setMultiplyButton.setTitle("[x]", for: .normal)
        setOneButton.setTitle("[1]", for: .normal) // Обычное состояние
        setTwoButton.setTitle("[2]", for: .normal)
        setThreeButton.setTitle("[3]", for: .normal)
        setSubButton.setTitle("[+]", for: .normal)
        setZeroButton.setTitle("[0]", for: .normal)
        setDotButton.setTitle("[.]", for: .normal)
        setEqualButton.setTitle("[=]", for: .normal)
        setMinusButton.setTitle("[-]", for: .normal)
//        setOneButton.setTitle("[OK]", for: .highlighted) // Нажатая кнопка
        
        // Вызов метода, при нажатии кнопки
        setSevenButton.addTarget(self, action: #selector(didTapGetSevenButton), for: .touchUpInside)
        setEightButton.addTarget(self, action: #selector(didTapGetEightButton), for: .touchUpInside)
        setNineButton.addTarget(self, action: #selector(didTapGetNineButton), for: .touchUpInside)
        setDivideButton.addTarget(self, action: #selector(didTapGetDivideButton), for: .touchUpInside)
        setFourButton.addTarget(self, action: #selector(didTapGetFourButton), for: .touchUpInside)
        setFiveButton.addTarget(self, action: #selector(didTapGetFiveButton), for: .touchUpInside)
        setSixButton.addTarget(self, action: #selector(didTapGetSixButton), for: .touchUpInside)
        setMultiplyButton.addTarget(self, action: #selector(didTapGetMultiplyButton), for: .touchUpInside)
        setOneButton.addTarget(self, action: #selector(didTapGetOneButton), for: .touchUpInside)
        setTwoButton.addTarget(self, action: #selector(didTapGetTwoButton), for: .touchUpInside)
        setThreeButton.addTarget(self, action: #selector(didTapGetThreeButton), for: .touchUpInside)
        setSubButton.addTarget(self, action: #selector(didTapGetSubButton), for: .touchUpInside)
        setZeroButton.addTarget(self, action: #selector(didTapGetZeroButton), for: .touchUpInside)
        setDotButton.addTarget(self, action: #selector(didTapGetDotButton), for: .touchUpInside)
        setEqualButton.addTarget(self, action: #selector(didTapGetEqualButton), for: .touchUpInside)
        setMinusButton.addTarget(self, action: #selector(didTapGetMinusButton), for: .touchUpInside)
        // terget=self - нажатие от кнопки приходит в текущий ViewController
        // Selector=#selector - (название метода)
        // action=touchUpInside - нажатие на кнопку и затем релиз кнопки (нажали/отпустили)
    }
    
    // Метод выполняемый по нажатии кнопки
    @objc func didTapGetZeroButton() {
        
        setNumOnScreen(num: 0)
        logTapOnButton(nameButton: "Zero")
    }
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
    @objc func didTapGetFourButton() {
        
        setNumOnScreen(num: 4)
        logTapOnButton(nameButton: "Four")
    }
    @objc func didTapGetFiveButton() {
        
        setNumOnScreen(num: 5)
        logTapOnButton(nameButton: "Five")
    }
    @objc func didTapGetSixButton() {
        
        setNumOnScreen(num: 6)
        logTapOnButton(nameButton: "Six")
    }
    @objc func didTapGetSevenButton() {
        
        setNumOnScreen(num: 7)
        logTapOnButton(nameButton: "Seven")
    }
    @objc func didTapGetEightButton() {
        
        setNumOnScreen(num: 8)
        logTapOnButton(nameButton: "Eight")
    }
    @objc func didTapGetNineButton() {
        
        setNumOnScreen(num: 9)
        logTapOnButton(nameButton: "Nine")
    }
    @objc func didTapGetSubButton() {
        
        setStringOnScreen(stringButton: "+")
        logTapOnButton(nameButton: "Sub")
    }
    @objc func didTapGetMinusButton() {
        
        setStringOnScreen(stringButton: "-")
        logTapOnButton(nameButton: "Minus")
    }
    @objc func didTapGetMultiplyButton() {
        
        setStringOnScreen(stringButton: "x")
        logTapOnButton(nameButton: "Multiply")
    }
    @objc func didTapGetDivideButton() {
        
        setStringOnScreen(stringButton: "/")
        logTapOnButton(nameButton: "Divide")
    }
    @objc func didTapGetDotButton() {
        
        setStringOnScreen(stringButton: ".")
        logTapOnButton(nameButton: "Dot")
    }
    @objc func didTapGetEqualButton() {
        
        setStringOnScreen(stringButton: "=")
        logTapOnButton(nameButton: "Equal")
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

