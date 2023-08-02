import Foundation

var balanceMoney: Int = .random(in: 1...100000)

var reservationNumber: Int = 0
var reservationNumberList: [Int] = []

var reservationRoomNumberList: [Int : String] = [:]
var reservationCheckInDateList: [Int : Date] = [:]
var reservationCheckOutDateList: [Int : Date] = [:]

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
    
    //    1. 예약 취소(사용자가 '6'을 선택하면 예약 목록이 보이고, 목록에서 번호를 선택하여 삭제 가능, 환불금 입금)
    //    2. 예약 수정(사용자가 '7'을 선택하면 예약 목록이 보이고, 목록에서 번호를 선택하여 방 변경 가능, 차액에 따라 입금 혹은 출금)
    //    3. 사용자가 '8'을 입력하면 입출금 내역 목록을 출력하도록
    //    "랜덤 금액으로 입금됨, 환불금으로 입금됨, 예약으로 출금됨, 수정시 차액만큼 입금되거나 출금됨 등"
    //    4. 사용자가 '9'을 입력하면 잔액을 천원 단위에서 컴마(,) 넣어서 잔액 출력 예시) 12,500원
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
    
    balanceMoney += randomMoney
    
    resrvationHotelMain()
}

func showRoomInfomation() {

    for (key, value) in roomInformation.sorted(by: { $0 < $1 }) {
        
        print("\(key)번방 \(value)원")
    }
    
    resrvationHotelMain()
}

func reserveHotel() {
    
    //목록이랑 관련 있는 동안에만
    let reservationIsPossible: Bool = true

    print("예약하실 방 번호를 입력하세요")
    guard let reserveRoomNumber = readLine(), !reserveRoomNumber.isEmpty else {
        return
    }
    
    print("체크인 날짜를 입력하세요 \n 2023년/07/21 형식")
    guard let checkInDate = readLine(), !checkInDate.isEmpty else {
        return
    }

    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd"

    guard let checkInDateFormatter = formatter.date(from: checkInDate) else {
        print("형식 오류입니다")
        return
    }
    
    print("체크아웃 날짜를 입력하세요 \n 2023/07/21 형식")
    guard let checkOutDate = readLine(), !checkOutDate.isEmpty else {
        return
    }
    
    guard let checkOutDateFormatter = formatter.date(from: checkOutDate) else {
        print("형식 오류입니다")
        return
    }
    
    if reservationIsPossible {
        reservationNumber += 1
        reservationNumberList.append(reservationNumber)
        reservationRoomNumberList[reservationNumber] = reserveRoomNumber
        reservationCheckInDateList[reservationNumber] = checkInDateFormatter
        reservationCheckOutDateList[reservationNumber] = checkOutDateFormatter
        
        //강제 언래핑을 두개나 써야하다니...방법 좀 생각해보자
        let resultMoney = balanceMoney - (roomInformation[Int(reserveRoomNumber)!]!)
        
        if resultMoney < 0 {
            print("잔액 부족으로 예약이 불가능합니다.")
        }else {
            print("""
                  예약이 완료되었습니다
                  잔액은 \(resultMoney)원입니다.
                  """)
            balanceMoney = resultMoney
        }

    } else {
        print("죄송합니다. 예약이 불가능합니다.")
    }
    
    resrvationHotelMain()
}

func myReservationList() {
    print("나의 예약 목록입니다")
    
    if reservationNumberList.isEmpty {
        print("예약한 방이 없습니다")
    } else {
        
        print("예약은 \(reservationNumberList.count) 개 있습니다")
        
        for i in 0...reservationNumberList.count - 1 {
            
            let number = reservationNumberList[i]
            
            print("""
                  예약 \(reservationNumberList[number - 1])번
                  방 번호: \(String(describing: reservationRoomNumberList[number]))
                  체크인 날짜: \(String(describing: reservationCheckInDateList[number]))
                  체크아웃 날짜: \(String(describing: reservationCheckOutDateList[number]))
                  """)
        }
    }
    
    resrvationHotelMain()
}

func myReservationListByDate(){
    print("체크인 날짜 순입니다")
    
    for (_, value) in reservationCheckInDateList.sorted(by: {$0.1 < $1.1}) {
        print("\(value)")
    }
}

func endRevervationHotel() {
    print("프로그램을 종료합니다")
}

func resrvationHotelMain() {
    showMenu()
    selectMenuNumber()
}

resrvationHotelMain()



