
import UIKit

class MainScreenViewController: UIViewController {
    
    //MARK: - Properties
    
    private let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.preferredDatePickerStyle = .compact
        datePicker.datePickerMode = .date
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        
        return datePicker
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let datePickerButton = UIBarButtonItem(customView: datePicker)
        let plusButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTracker))
        navigationController?.navigationBar.topItem?.setLeftBarButton(plusButton, animated: false)
        navigationController?.navigationBar.topItem?.setRightBarButton(datePickerButton, animated: false)
        configureDate()
    }
    
    //MARK: - Methods
    
    @objc private func addTracker() {
        
    }
    
    private func configureDate() {
        view.addSubview(datePicker)
        
        NSLayoutConstraint.activate([
            datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            datePicker.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}

