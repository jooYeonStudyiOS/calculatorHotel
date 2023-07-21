import Foundation

var balanceMoney: Int = .random(in: 1...10000000)

func showMenu() {
    print("""
          스위프트 호텔에 어서 오세용!
          
          <메뉴>
          1. 이벤트 머니 지급!
          2. 방 정보 확인하기
          
          메뉴를 선택해 주세요
          """)
}

func selectMenuNumber() {
    guard let selectMenuNumber = readLine(), !selectMenuNumber.isEmpty else {
        print("잘 못 입력한 번호입니다")
        return
    }
    
    print("입력 번호는 \(selectMenuNumber)번 입니다")
}



func resrvationHotelMain() {
    showMenu()
    selectMenuNumber()
}

resrvationHotelMain()



