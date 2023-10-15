//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

// Импортируем UIKit, который предоставляет основные классы и функции для разработки пользовательских интерфейсов в iOS.
import UIKit

// Определение класса ViewController, который наследуется от UIViewController.
class ViewController: UIViewController {

    // Связываем элементы интерфейса с кодом, используя @IBOutlet.
    @IBOutlet weak var diceViewImage1: UIImageView!
    @IBOutlet weak var diceViewImage2: UIImageView!

    // Обработчик нажатия на кнопку.
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Создаем массив с изображениями для шестигранных костей.
        let diceArray = [
            UIImage(imageLiteralResourceName: "DiceOne"),
            UIImage(imageLiteralResourceName: "DiceTwo"),
            UIImage(imageLiteralResourceName: "DiceThree"),
            UIImage(imageLiteralResourceName: "DiceFour"),
            UIImage(imageLiteralResourceName: "DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix")
        ]
        
        // Устанавливаем случайное изображение для первой кости из массива.
        diceViewImage1.image = diceArray.randomElement()
        
        // Устанавливаем случайное изображение для второй кости из массива.
        diceViewImage2.image = diceArray.randomElement()
        
    }
    
}


