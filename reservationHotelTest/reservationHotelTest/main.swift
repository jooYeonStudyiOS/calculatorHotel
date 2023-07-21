import Foundation

var balanceMoney: Int = .random(in: 1...100000)

var reservationNumber: Int = 0
var reservationNumberList: [Int] = []

var reservationRoomNumberList: [Int : String] = [:]
var reservationCheckInDateList: [Int : String] = [:]
var reservationCheckOutDateList: [Int : String] = [:]

let roomInformation: [Int : Int] = [1:10000, 2:20000, 3:30000, 4:40000, 5:50000]

func showMenu() {
    print("""
          ====================
          스위프트 호텔에 어서 오세용!
          
          <메뉴>
          1. 이벤트 머니 지급!
          2. 방 정보 확인하기
          3. 예약하기
          4. 예약 목록
          5. 체크인 순으로 보기
          0. 프로그램 종료하기
          
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
    case 3: reserveHotel()
    case 4: myReservationList()
    case 5: myReservationListByDate()
    case 0: endRevervationHotel()
    default: print("에러 발생했습니다")
    }
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
    
    resrvationHotelMain()
}

func showRoomInfomation() {

    for (key, value) in roomInformation.sorted(by: { $0 < $1 }) {
        
        print("\(key)번방 \(value)원")
    }
    
    resrvationHotelMain()
}

func reserveHotel() {
    
    let reservationIsPossible: Bool = .random()

    print("예약하실 방 번호를 입력하세요")
    guard let reserveRoomNumber = readLine(), !reserveRoomNumber.isEmpty else {
        return
    }
    
    print("체크인 날짜를 입력하세요")
    guard let checkInDate = readLine(), !checkInDate.isEmpty else {
        return
    }
    
    print("체크아웃 날짜를 입력하세요")
    guard let checkOutDate = readLine(), !checkOutDate.isEmpty else {
        return
    }
    
    if reservationIsPossible {
        reservationNumber += 1
        reservationNumberList.append(reservationNumber)
        
        reservationRoomNumberList[reservationNumber] = reserveRoomNumber
        reservationCheckInDateList[reservationNumber] = checkInDate
        reservationCheckOutDateList[reservationNumber] = checkOutDate
        
        //강제 언래핑을 두개나 써야하다니...방법 좀 생각해보자
        let resultMoney = balanceMoney - (roomInformation[Int(reserveRoomNumber)!]!)
        
        if resultMoney < 0 {
            print("잔액 부족으로 예약이 불가능합니다.")
        }else {
            print("""
                  예약이 완료되었습니다
                  잔액은 \(resultMoney)원입니다.
                  """)
        }

    } else {
        print("죄송합니다. 예약이 불가능합니다.")
    }
    
    resrvationHotelMain()
}

func myReservationList() {
    print("나의 예약 목록입니다")
//    사용자가 '4'를 선택하면 나의 예약 목록을 출력하세요. 예약된 방의 목록을 보여주고, 각 예약 정보를 출력하세요.

}

func myReservationListByDate(){
    print("체크인 날짜 순입니다")
}

func endRevervationHotel() {
    print("프로그램을 종료합니다")
}

func resrvationHotelMain() {
    showMenu()
    selectMenuNumber()
}

resrvationHotelMain()



