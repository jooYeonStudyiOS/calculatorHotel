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

        print("\(firstNumber) \(operation) \(secondNumber) = \(result)")
    }
    
    func changeOperation(newOperation: AbstractOperation){
        operation = newOperation
    }
 }


let calculator = Calculator(operation: AbstractOperation())

calculator.changeOperation(newOperation: AddOperation())
calculator.showResult(firstNumber: 3, secondNumber: 7)


calculator.changeOperation(newOperation: SubstractOperation())
calculator.showResult(firstNumber: 3, secondNumber: 7)


calculator.changeOperation(newOperation: MultiplyOperation())
calculator.showResult(firstNumber: 7, secondNumber: 5)

calculator.changeOperation(newOperation: DivideOperation())
calculator.showResult(firstNumber: 7, secondNumber: 7)
