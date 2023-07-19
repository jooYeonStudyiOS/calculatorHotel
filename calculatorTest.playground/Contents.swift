//연산 클래스에서 하는 일
//각 숫자들을 연산하기

class AbstractOperation {
    func result(firstNumber: Double, secondNumber: Double) -> Double {
        return 0.0
    }
}

class AddOperation: AbstractOperation {
    override func result(firstNumber: Double, secondNumber: Double)  -> Double {
        return firstNumber + secondNumber
    }
}

class SubstractOperation: AbstractOperation {
    override func result(firstNumber: Double, secondNumber: Double)  -> Double {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation: AbstractOperation {
    override func result(firstNumber: Double, secondNumber: Double)  -> Double {
        return firstNumber * secondNumber
    }
}

class DivideOperation: AbstractOperation {
    override func result(firstNumber: Double, secondNumber: Double)  -> Double {
        return firstNumber / secondNumber
    }
}

//계산기가 하는 일
//1. 숫자와 연산자 입력 받기
//2. 연산한 결과 출력하기

class Calculator {
    let operation: AbstractOperation
    
    init(operation: AbstractOperation) {
        self.operation = operation
    }
    
    func showResult(firstNumber: Double, secondNumber: Double) {
        print(operation.result(firstNumber: firstNumber, secondNumber: secondNumber))
    }
 }


let addOperation = AddOperation()
let substractOperation = SubstractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()

let calculator1 = Calculator(operation: addOperation)
calculator1.showResult(firstNumber: 3, secondNumber: 7)

let calculator2 = Calculator(operation: substractOperation)
calculator2.showResult(firstNumber: 3, secondNumber: 7)

let calculator3 = Calculator(operation: multiplyOperation)
calculator3.showResult(firstNumber: 3, secondNumber: 7)

let calculator4 = Calculator(operation: divideOperation)
calculator4.showResult(firstNumber: 3, secondNumber: 7)
