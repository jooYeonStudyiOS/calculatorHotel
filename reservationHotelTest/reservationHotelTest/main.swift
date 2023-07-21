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
    
    if (Int(selectMenuNumber) != nil) {
        print("입력 번호는 \(selectMenuNumber)번 입니다")
        addRandomMoney()
    } else {
        print("숫자를 입력해 주세요")
    }
}

func addRandomMoney() {
    var randomMoney: Int = .random(in: 1...500000)
    
    print("""
          축하합니다! 당첨 금액은 \(randomMoney) 원입니다~
          현재 잔고 : \(balanceMoney)
          합계 : \(balanceMoney + randomMoney)
          """)
}



func resrvationHotelMain() {
    showMenu()
    selectMenuNumber()
}

resrvationHotelMain()



