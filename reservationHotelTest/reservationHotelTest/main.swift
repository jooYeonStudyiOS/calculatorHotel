import Foundation

var balanceMoney: Int = .random(in: 1...10000000)

func showMenu() {
    print("""
          ====================
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

    switch Int(selectMenuNumber) {
    case 1: addRandomMoney()
    case 2: showRoomInfomation()
    default: print("에러 발생했습니다")
    }
    
    resrvationHotelMain()
}

func addRandomMoney() {
    let randomNumber: Int = .random(in: 1...50)
    var randomMoney: Int = 0
    
    if randomNumber < 10 {
        randomMoney = randomNumber * 100000
    } else if randomNumber >= 10 {
        randomMoney = randomNumber * 10000
    }
    
    //세자리 수 끊기 추가 해보기
    
    print("""
          축하합니다! 당첨 금액은 \(randomMoney) 원입니다~
          현재 잔고 : \(balanceMoney)
          합계 : \(balanceMoney + randomMoney)
          """)
}

func showRoomInfomation() {
    var roomInfomation: [String] = []
    
    //원래라면 등록된 데이터 출력하겠지만, 이번에는 그냥 1번방 1만원 .. 규칙이 있어서 for문 사용한 느낌으로..
    for i in 1...5 {
        roomInfomation.insert("\(i)번방 \(i)0,000원", at: i-1)
    }
    print(roomInfomation)
}


func resrvationHotelMain() {
    showMenu()
    selectMenuNumber()
}

resrvationHotelMain()



