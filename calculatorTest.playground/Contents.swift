//연산 클래스에서 하는 일
//각 숫자들을 연산하기

class AbstractOperation {
    var operation: String = "초기"
    
    func result(firstNumber: Double, secondNumber: Double) -> Double {
        return 0.0
    }
}

class AddOperation: AbstractOperation {
    override var operation: String {
        get {
            return "+"
        }
        set {
        }
    }
    
    override func result(firstNumber: Double, secondNumber: Double)  -> Double {
        return firstNumber + secondNumber
    }
}

class SubstractOperation: AbstractOperation {
    override var operation: String {
        get {
            return "-"
        }
        set {
        }
    }
    
    override func result(firstNumber: Double, secondNumber: Double)  -> Double {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation: AbstractOperation {
    override var operation: String {
        get {
            return "*"
        }
        set {
        }
    }
    
    override func result(firstNumber: Double, secondNumber: Double)  -> Double {
        return firstNumber * secondNumber
    }
}

class DivideOperation: AbstractOperation {
    override var operation: String {
        get {
            return "/"
        }
        set {
        }
    }
    
    override func result(firstNumber: Double, secondNumber: Double)  -> Double {
        return firstNumber / secondNumber
    }
}

//계산기가 하는 일
//1. 숫자와 연산자 입력 받기
//2. 연산한 결과 출력하기

class Calculator {
    var operation: AbstractOperation
    
    init(operation: AbstractOperation) {
        self.operation = operation
    }
    
    func showResult(firstNumber: Double, secondNumber: Double) {
        let result = operation.result(firstNumber: firstNumber, secondNumber: secondNumber)
        let operation = operation.operation
        
        // 과제와는 크게 상관 없는..
        // .0 을 표시하느냐 하지 않느냐 변환하기
        let firstNumberToString: String = changeToString(number: firstNumber)
        let secondNumberToString: String = changeToString(number: secondNumber)
        let resultToString: String = changeToString(number: result)
        
        print("\(firstNumberToString) \(operation) \(secondNumberToString) = \(resultToString)")
    }
    
    func changeOperation(newOperation: AbstractOperation){
        operation = newOperation
    }
    
    func changeToString(number: Double) -> String {
        return number.truncatingRemainder(dividingBy: 1) == 0 ? String(Int(number)) : String(number)
    }
 }


let calculator = Calculator(operation: AbstractOperation())

calculator.changeOperation(newOperation: AddOperation())
calculator.showResult(firstNumber: 3.2, secondNumber: 7)

calculator.changeOperation(newOperation: SubstractOperation())
calculator.showResult(firstNumber: 3, secondNumber: 7)

calculator.changeOperation(newOperation: MultiplyOperation())
calculator.showResult(firstNumber: 7, secondNumber: 5)

calculator.changeOperation(newOperation: DivideOperation())
calculator.showResult(firstNumber: 10, secondNumber: 4)
