//
//  ViewController.swift
//  Metas Nutricionales
//
//  Created by Julio Rodriguez Reategui on 23/08/22.
//

import UIKit

class GoalsViewController: UIViewController {
    
    var message = "Bien Hecho!!"
    
    //STEPPERS Outlets
    
    @IBOutlet weak var stepperAlmidonD: UIStepper!
    @IBOutlet weak var stepperCarnicoModD: UIStepper!
    @IBOutlet weak var stepperFrutaD: UIStepper!
    @IBOutlet weak var stepperAlmidonA: UIStepper!
    @IBOutlet weak var stepperVerdurasA: UIStepper!
    @IBOutlet weak var stepperGrasaA: UIStepper!
    @IBOutlet weak var stepperCarnicoMagA: UIStepper!
    @IBOutlet weak var stepperFrutaMT: UIStepper!
    @IBOutlet weak var stepperGrasaMT: UIStepper!
    @IBOutlet weak var stepperCarnicoMagC: UIStepper!
    @IBOutlet weak var stepperVerdurasC: UIStepper!
    @IBOutlet weak var stepperAlmidonC: UIStepper!
    @IBOutlet weak var stepperGrasaC: UIStepper!
    
    //LABELS
    //Desayuno
    @IBOutlet weak var almidonDes: UILabel!
    @IBOutlet weak var carnicoModDes: UILabel!
    @IBOutlet weak var frutaDes: UILabel!
    
    //Almuerzo
    @IBOutlet weak var almidonAlm: UILabel!
    @IBOutlet weak var verdurasAlm: UILabel!
    @IBOutlet weak var grasaAlm: UILabel!
    @IBOutlet weak var carnicoMagAlm: UILabel!
    
    //Media Tarde
    @IBOutlet weak var frutaMT: UILabel!
    @IBOutlet weak var grasaMT: UILabel!
    
    //Cena
    @IBOutlet weak var carnicoMagCena: UILabel!
    @IBOutlet weak var verdurasCena: UILabel!
    @IBOutlet weak var almidonCena: UILabel!
    @IBOutlet weak var grasaCena: UILabel!
    
    
    //STEPPERS Inputs
    //Desayuno
    @IBAction func stepperAlmidonDesChanged(_ sender: UIStepper) {
        almidonDes.text = String(Int(sender.value))
    }
    
    @IBAction func stepperCarnicoMagDesChanged(_ sender: UIStepper) {
        carnicoModDes.text = String(Int(sender.value))
    }
    
    @IBAction func stepperFrutaDesChanged(_ sender: UIStepper) {
        frutaDes.text = String(Int(sender.value))
    }
    
    //Almuerzo
    @IBAction func stepperAlmidonAlmChanged(_ sender: UIStepper) {
        almidonAlm.text = String(Int(sender.value))
    }
    
    @IBAction func stepperVerdurasAlmChanged(_ sender: UIStepper) {
        verdurasAlm.text = String(Int(sender.value))
    }
    
    @IBAction func stepperGrasaAlmChanged(_ sender: UIStepper) {
        grasaAlm.text = String(Int(sender.value))
    }
    
    @IBAction func stepperCarnicoMagAlmChanged(_ sender: UIStepper) {
        carnicoMagAlm.text = String(Int(sender.value))
    }
    
    //Media Tarde
    @IBAction func stepperFrutaMTChanged(_ sender: UIStepper) {
        frutaMT.text = String(Int(sender.value))
    }
    
    @IBAction func stepperGrasaMTChanged(_ sender: UIStepper) {
        grasaMT.text = String(Int(sender.value))
    }
    
    
    //Cena
    @IBAction func stepperCarnicoMagCenaChanged(_ sender: UIStepper) {
        carnicoMagCena.text = String(Int(sender.value))
    }
    
    @IBAction func stepperVerdurasCenaChanged(_ sender: UIStepper) {
        verdurasCena.text = String(Int(sender.value))
    }
    
    @IBAction func stepperAlmidonCenaChanged(_ sender: UIStepper) {
        almidonCena.text = String(Int(sender.value))
    }
    
    @IBAction func stepperGrasaCenaChanged(_ sender: UIStepper) {
        grasaCena.text = String(Int(sender.value))
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        
        
        //Desayuno
        stepperAlmidonD.value = 0
        stepperCarnicoModD.value = 0
        stepperFrutaD.value = 0
        almidonDes.text = "0"
        carnicoModDes.text = "0"
        frutaDes.text = "0"
        
        //Almuerzo
        stepperAlmidonA.value = 0
        stepperVerdurasA.value = 0
        stepperGrasaA.value = 0
        stepperCarnicoMagA.value = 0
        almidonAlm.text = "0"
        verdurasAlm.text = "0"
        grasaAlm.text = "0"
        carnicoMagAlm.text = "0"
        
        //Media Tarde
        stepperFrutaMT.value = 0
        stepperGrasaMT.value = 0
        frutaMT.text = "0"
        grasaMT.text = "0"
        
        //Cena
        stepperCarnicoMagC.value = 0
        stepperVerdurasC.value = 0
        stepperAlmidonC.value = 0
        stepperGrasaC.value = 0
        carnicoMagCena.text = "0"
        verdurasCena.text = "0"
        almidonCena.text = "0"
        grasaCena.text = "0"
    }
    
    @IBAction func goToResultPressed(_ sender: Any) {
        
        let goals = ["2", "2", "2", "2", "2", "2", "5", "2", "1", "5", "2", "1", "2"]
        let consumption = [almidonDes.text, carnicoModDes.text, frutaDes.text, almidonAlm.text, verdurasAlm.text, grasaAlm.text, carnicoMagAlm.text, frutaMT.text, grasaMT.text, carnicoMagCena.text, verdurasCena.text, almidonCena.text, grasaCena.text]
        
        if goals == consumption {
            self.message = "Bien Hecho!!"
        }else{
            self.message = "Mal hecho!!"
        }
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.message = self.message
        }
    }
    
//    func compareMacros() -> Bool {
//        if Int(almidonDes.text!) == 2{
//            return true
//        }else{
//            return false
//        }
//    }
}

