import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDataSource, UITableViewDelegate {

    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    let pickerView = UIPickerView()
    
    var tabelView: UITableView!
    
    let data = ["옵션1", "옵선2", "옵션3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //스크롤뷰 생성
        scrollView = UIScrollView(frame: CGRect(origin: CGPoint(x: 0, y: 300), size: CGSize(width: view.bounds.width, height: 300)))
        scrollView.delegate = self
        
        //이미지 생성
        let image = UIImage(systemName: "folder.fill")
        
        //이미지를 넣고 이미지뷰 생성
        imageView = UIImageView(image: image)
        imageView.backgroundColor = .red
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(origin: .zero, size: CGSize(width: 100, height: 100))
        
        //스크롤뷰에 이미지뷰를 추가
        scrollView.addSubview(imageView)
        
        //스크롤뷰의 사이즈를 설정
        //스크롤뷰 사이즈 < 컨텐트사이즈 조건에서 스크롤 가능
        scrollView.contentSize = CGSize(width: view.bounds.width*2, height: 300*2)
        
        //스크롤 줌인, 줌아웃
        scrollView.minimumZoomScale = 0.5
        scrollView.maximumZoomScale = 2.0
        
        //루트뷰에 스크롤뷰를 추가
        view.addSubview(scrollView)
        
        
        //picker뷰
        pickerView.frame = CGRect(x: 200, y: 300, width: 200, height: 200)
        
        //UIPickerViewDataSource, UIPickerViewDelegate 를 상속받아줘야 사용 가능
        pickerView.dataSource = self
        pickerView.delegate = self
        
        view.addSubview(pickerView)
        
        
        //tableView
        tabelView = UITableView(frame: view.bounds, style: .plain)
        tabelView.delegate = self
        tabelView.dataSource = self
        
        view.addSubview(tabelView)
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }

    
    //UIPickerViewDataSource, UIPickerViewDelegate 를 상속받으면 당연히 사용해야 하는 함수
    //프로토콜은 필수항목 이란 느낌이기 때문에, 반드시 구현해줘야 하는 것들이 있다!
    
    //pickView의 열의 갯수를 정해주는 함수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    //1열에서 몇 개의 행을 보여줄지 정해주는 함수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //각 행에서 보여줄 타이틀
    //이 함수를 구현하지 않으면 ? 라고만 출력된다
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    //각 행을 선택했을 때 어떤 액션을 할지 정해주는 함수
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedValue = data[row]
        print("픽커뷰 \(selectedValue)")
    }
    
    
    //각각의 섹션에 대해 행이 몇 개 들어가는지 설정
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    //각각의 행에는 cell이라는 기본틀이 존재하고, 그 기본틀을 정의해주는 함수
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    //선택되었을 때 어떤 액션을 할지 정해주는 함수
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("테이블 뷰 \(data[indexPath.row])")
    }
}

