import UIKit

class ViewController: UIViewController {

    let wilmaButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Wilma", for: .normal)
        button.backgroundColor = .gray
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    let xavierButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Xavier", for: .normal)
        button.backgroundColor = .gray
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        wilmaButton.addTarget(self, action: #selector(wilmaTapped), for: .touchUpInside)
        xavierButton.addTarget(self, action: #selector(xavierTapped), for: .touchUpInside)
        
        view.backgroundColor = .white
        
        view.addSubview(wilmaButton)
        view.addSubview(xavierButton)
    }
    
    func wilmaTapped() {

        loginWith(user: .wilma)
    }
    
    func xavierTapped() {
        loginWith(user: .xavier)
    }
    
    func loginWith(user: User) {
        let callController = CallController(user: user)
        navigationController?.pushViewController(callController, animated: true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        wilmaButton.sizeToFit()
        wilmaButton.frame.origin.x = view.frame.midX - wilmaButton.frame.width / 2
        wilmaButton.frame.origin.y = view.frame.midY - wilmaButton.frame.height - 10
        
        xavierButton.sizeToFit()
        xavierButton.frame.origin.x = view.frame.midX - xavierButton.frame.width / 2
        xavierButton.frame.origin.y = view.frame.midY + xavierButton.frame.height + 10
    }
}

