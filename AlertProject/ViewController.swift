//
//  ViewController.swift
//  AlertProject
//
//  Created by Ali serkan Boyracı  on 6.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        /*let alert = UIAlertController(title: "Error!", message: "Username Not Found!", preferredStyle: .alert)
        // to give alert pop-up, you can use UIAlertController
        
        let okButton = UIAlertAction(title: "OK", style: .default) //default normal mavi, cancel kalın mavi, destructive kalın kırmızı
        { UIAlertAction in
            print("OK Clicked")
        }
        //{ in //buttona basıldığında yapılacak kodu açar ihtiyaç yoksa nil yazabilirsin.
       
        alert.addAction(okButton) //oluşturualn butpnu alert içine gömmek için yazmak zorundasın
        
        self.present(alert, animated: true, completion: nil) //bir şeyi göstermek için present kullanılır.
        // completion - sonrasında bir şey yapılsın mı diye soruyor?
        */
        
        //
        if usernameTextField.text == "" {
            alertAction(titleEntry: "Error!", messageEntry: "Username Not Found!") //fonk olmasaydı her seferinde aynı kod blogunu yazacaktık.
        } else if passwordTextField.text == "" {
            alertAction(titleEntry: "Error", messageEntry: "Enter Password!")
        } else if passwordTextField.text != password2TextField.text {
            alertAction(titleEntry: "Error", messageEntry: "Passwords are not same!")
        } else {
            alertAction(titleEntry: "Success", messageEntry: "User Saved")
        }
        
    }
    
    func alertAction(titleEntry:String, messageEntry:String) {
        let alert = UIAlertController(title: titleEntry, message: messageEntry, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
        
    }
    //AKSAM BURAYA DIGER TUSLARI DA EKLEMELI BISEY OLUR MU DENEYELIM
    // diger tuslardan nasil bi islem yapilabilir.
}

