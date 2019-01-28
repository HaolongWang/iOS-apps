import UIKit

class ChangeCityViewController: UIViewController {

    @IBOutlet weak var cityNameTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    var delegate: changeCityDelegate?
    
    @IBAction func backToWeatherVC() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeCity() {
        if delegate != nil {
            let city = cityNameTextfield.text!
            delegate?.changeCity(city: city)
            backToWeatherVC()
        }
    }
    

}
