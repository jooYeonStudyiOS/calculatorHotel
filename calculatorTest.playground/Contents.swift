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
        return firstNumber - secondNumber
    }
}

class DivideOperation: AbstractOperation {
    override func result(firstNumber: Double, secondNumber: Double)  -> Double {
        return firstNumber - secondNumber
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
