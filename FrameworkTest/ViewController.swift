import UIKit
import TestFramework

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Main VC in app"
    navigationController?.navigationBar.tintColor = UIColor.black;
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
    let vc = RedViewController()
    navigationController?.pushViewController(vc, animated: true)
  }
  
}

