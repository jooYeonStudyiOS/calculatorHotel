import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UILabel
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 300, height: 50))
        
        label.textColor = .blue
        label.text = "안녕하세요"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        
        //뷰에 추가 반드시 할 것!
        view.addSubview(label)
        
        //UIImageView
        let imageView = UIImageView(frame: CGRect(x: 150, y: 150, width: 100, height: 100))
        
        //이미지뷰에 넣어줄 이미지를 생성
        let image = UIImage(systemName: "folder.fill")
        
        //이미지뷰에 이미지를 넣어줌
        imageView.image = image
        
        //넣을 때 어떻게 넣을지 설정
        imageView.contentMode = .scaleAspectFit
        
        view.addSubview(imageView)
        
        //UITextField
        let textField = UITextField(frame: CGRect(x: 200, y: 200, width: 100, height: 100))
        textField.placeholder = "입력하십시오~~"
        
        view.addSubview(textField)
        
        //UIButton
        let button = UIButton(frame: CGRect(x: 200, y: 300, width: 150, height: 150))
        button.setTitle("버튼", for: .normal)
        button.backgroundColor = .gray
        
        //버튼에 이벤트가 들어왔을 때 실행될 액션 설정 가능
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        view.addSubview(button)
        
        
        //UISwitch
        let switchButton = UISwitch(frame: CGRect(x: 200, y: 600, width: 50, height: 50))
        switchButton.isOn = true
        switchButton.onTintColor = .purple
        switchButton.thumbTintColor = .cyan
        switchButton.addTarget(self, action: #selector(buttonAction), for: .valueChanged)
        
        view.addSubview(switchButton)
        
        slider.addTarget(self, action: #selector(buttonAction), for: .valueChanged)
        
        view.addSubview(slider)
        
        //UISegmentedControl
        let segmentedControl = UISegmentedControl(items: ["옵션1", "옵션2", "옵션3"])
        segmentedControl.frame = CGRect(x: 250, y: 550, width: 150, height: 150)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(buttonAction), for: .valueChanged)
        
        view.addSubview(segmentedControl)

    }
    
    //UISlider
    let slider = UISlider(frame: CGRect(x: 150, y: 750, width: 150, height: 150))

    
    
    
    @objc func buttonAction() {
        view.backgroundColor = .black
        print("슬라이더값 \(slider.value)")
    }
    
    


}

