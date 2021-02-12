import UIKit

public class RedViewController: UIViewController {

  let button: UIButton = {
    let b = UIButton()
    b.setTitle("Present Blue VC", for: .normal)
    b.translatesAutoresizingMaskIntoConstraints = false
    b.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    return b
  }()

  public override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemRed
    title = "Main framework VC"
    view.addSubview(button)
    NSLayoutConstraint.activate([
      button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
    ])
  }

  @objc private func buttonTapped(_ sender: UIButton) {
    let vc = BlueViewController()
    navigationController?.pushViewController(vc, animated: true)
  }
}
