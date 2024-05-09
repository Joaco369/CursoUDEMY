//
//  ViewController.swift
//  ControlsAndTextViews
//
//  Created by Joaquin Villarreal on 04/03/2024.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myStepperLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var mySwitchLabel: UILabel!
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var myProgressView: UIProgressView!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myPickerView: UIPickerView!
    
    // Variables
    // Con esta variable sabemos cuantos elementos hay y que valor tienen.
    private let myPickerViewValues = ["Buenos Aires", "Cordoba", "San Luis", "Santiago Del Estero", "Jujuy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Buttons
        
        myButton.setTitle("Mi boton", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
        
        // Pickers
        
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self
        myPickerView.delegate = self
        myPickerView.isHidden = true
        
        // PageControls
        
        myPageControl.numberOfPages = myPickerViewValues.count
        myPageControl.currentPageIndicatorTintColor = .blue
        myPageControl.pageIndicatorTintColor = .lightGray
        
        
        // SegmentedControls
        
        mySegmentedControl.removeAllSegments()
        
        // Creamos un ciclo for donde tendra el indice y el valor de los elementos que se ejecuta sobre nuestro Array. Luego llamamos a la operacion .enumerated(). Para recuperar este valor y este indice. Llamamos a la operacion .insertSegment en la que añadimos el valor y el indice que tiene una animacion verdadera.
        
        for (index, value) in myPickerViewValues.enumerated() {
            mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
        }
        
        // Sliders
        
        mySlider.minimumTrackTintColor = .red
        mySlider.minimumValue = 1
        mySlider.maximumValue = Float(myPickerViewValues.count)
        mySlider.value = 1
        
        // Stepper
        
        myStepper.minimumValue = 1
        myStepper.maximumValue = Double((myPickerViewValues.count))
        
        // Switch
        
        mySwitch.onTintColor = .purple
        mySwitch.isOn = false
        
        //Progress Indicators
        
        myProgressView.progress = 0
        
        myActivityIndicator.startAnimating()
        myActivityIndicator.color = .black
        myActivityIndicator.hidesWhenStopped = true
        
        // Labels
        
        myStepperLabel.textColor = .darkGray
        myStepperLabel.font = UIFont.boldSystemFont(ofSize: 26)
        myStepperLabel.text = "1"
        
        mySwitchLabel.text = "Apagado"
        
        // Text Field
        
        myTextField.textColor = .brown
        myTextField.placeholder = "Escribe algo"
        myTextField.delegate = self
        
        // Text View
        
        myTextView.textColor = .green
        myTextView.delegate = self
    }
    
    // Actions
    @IBAction func myButtonAction(_ sender: Any) {
    // Creamos un IF que si el boton es igual a Azul, cuando apretemos se va a cambiar a verde sino se va a quedar en color Azul
        if myButton.backgroundColor == .blue {
            myButton.backgroundColor = .green
        } else {
            myButton.backgroundColor = .blue
        }
        // Llamamos a la funcion para dejar de responder
        myTextView.resignFirstResponder()
    }

    @IBAction func myPageControlAction(_ sender: Any) {
        // Selecionamos la fila de Picker View en la Pagina actual en la posicion 0
        myPickerView.selectRow(myPageControl.currentPage, inComponent: 0, animated: true)
        // Se crea una constante para pagina actual.
        let pageControl = (myPageControl.currentPage)
    
        var progress: Float = 0
        // Declaramos el mecanismo de seleccion SWITCH.
        switch pageControl {
        case 0..<1: progress = 0.2
        case 1..<2: progress = 0.4
        case 2..<3: progress = 0.6
        case 3..<4: progress = 0.8
        default: progress = 1
        }
        
        myProgressView.progress = progress
        
        // Creamos una constante llamada myString que es igual a todos los elementos que contiene Picker View y que en mi control de pagina se muestre la pagina actual del elemento actual.
        
        // Luego se llama a la funcion .setTitle para imprimir la constante myString(Elemento actual) que creamos.
        
        let myString = myPickerViewValues[myPageControl.currentPage]
        myButton.setTitle(myString, for: .normal)
        
        // Este codigo hace que cuando cambie de valor el pageControl se modifique el segmentedControl
        mySegmentedControl.selectedSegmentIndex = myPageControl.currentPage
        
        // El valor de mySlider va a ser igual a la pagina actual + 1
        mySlider.value = Float(myPageControl.currentPage + 1)
        
        // El valor de myStepper va a ser igual a la pagina actual + 1
        myStepper.value = Double((myPageControl.currentPage + 1))
        
    }
    
    @IBAction func mySegmentedControlAction(_ sender: Any) {
        // Selecciona la fila del segmento de indice del semented control, desde el valor 0
        myPickerView.selectRow(mySegmentedControl.selectedSegmentIndex, inComponent: 0, animated: true)
        
        let segmented = (mySegmentedControl.selectedSegmentIndex)
        
        var progress: Float = 0
        
        switch segmented {
        case 0..<1: progress = 0.2
        case 1..<2: progress = 0.4
        case 2..<3: progress = 0.6
        case 3..<4: progress = 0.8
        default: progress = 1
        }
        
        myProgressView.progress = progress
        
        
        let myString = myPickerViewValues[mySegmentedControl.selectedSegmentIndex]
        myButton.setTitle(myString, for: .normal)
        
        // Este codigo hace que cuando se mueve el segmentedControl se modifique el pageControl
        myPageControl.currentPage =
        mySegmentedControl.selectedSegmentIndex
        
        mySlider.value = Float(mySegmentedControl.selectedSegmentIndex + 1)
        
        myStepper.value =
        Double(mySegmentedControl.selectedSegmentIndex + 1)
        
}
    
    @IBAction func mySliderAction(_ sender: Any) {
        
        let sliderValue = (mySlider.value)
        
        var progress: Float = 0
        
        switch sliderValue {
        case 1..<2:
            mySegmentedControl.selectedSegmentIndex = 0
            progress = 0.2
        case 2..<3:
            mySegmentedControl.selectedSegmentIndex = 1
            progress = 0.4
        case 3..<4:
            mySegmentedControl.selectedSegmentIndex = 2
            progress = 0.6
        case 4..<5:
            mySegmentedControl.selectedSegmentIndex = 3
            progress = 0.8
        default:
            mySegmentedControl.selectedSegmentIndex = 4
            progress = 1
        }
        
        myProgressView.progress = progress
        
        myPageControl.currentPage = Int(sliderValue - 1)
        
        myPickerView.selectRow(Int(sliderValue - 1), inComponent: 0, animated: true)
        
        let myString =
        myPickerViewValues[Int(sliderValue - 1)]
        myButton.setTitle(myString, for: .normal)
    }
    @IBAction func myStepperAction(_ sender: Any) {
        
        let stepper = (myStepper.value)
        
        var progress: Float = 0
        
        switch stepper {
        case 1..<2: progress = 0.2
        case 2..<3: progress = 0.4
        case 3..<4: progress = 0.6
        case 4..<5: progress = 0.8
        default: progress = 1
        }
        
        let value = myStepper.value
        mySlider.value = Float(value)
        
        myProgressView.progress = progress
        
        myPageControl.currentPage = Int(Float(value - 1))
        
        mySegmentedControl.selectedSegmentIndex = Int(Float(value - 1))
    
        myPickerView.selectRow(Int(value - 1), inComponent: 0, animated: true)
        
        let myString = myPickerViewValues[Int(value - 1)]
        myButton.setTitle(myString, for: .normal)
        
        myStepperLabel.text = "\(value)"
        
    }
    @IBAction func mySwitchAction(_ sender: Any) {
        
     // Se crea una Condicion IF para que cuando el Switch este encendido se mueste el Picker View. sino el picker view esta oculto.
        
        if mySwitch.isOn {
            mySwitchLabel.text = "Encendido"
            myPickerView.isHidden = false
            myActivityIndicator.stopAnimating()
        } else {
            mySwitchLabel.text = "Apagado"
            myPickerView.isHidden = true
            myActivityIndicator.startAnimating()
        }
    }
}
 // Se hace extension de Picker Self
extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerViewValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerViewValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let myString =
        myPickerViewValues[row]
        myButton.setTitle(myString, for: .normal)
        
        myPageControl.currentPage = row
        
        mySegmentedControl.selectedSegmentIndex = row
        
        mySlider.value = Float(row + 1)
        
        myStepper.value = Double(Int(row + 1))
        
    }
    
}

// UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        myButton.setTitle(myTextField.text, for: .normal)
    }
    
}
// Extension de Text View
extension ViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        myTextField.isHidden = true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        myTextField.isHidden = false
    }
}

