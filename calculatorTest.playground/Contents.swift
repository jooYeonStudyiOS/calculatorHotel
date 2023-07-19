enum Operation {
    case add, substract, multiply, divide
}

class AddOperation {
    func result(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

class SubstractOperation {
    func result(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation {
    func result(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}

class DivideOperation {
    func result(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}

class Calculator {
    let firstNumber: Double
    let secondNumber: Double
    let operation: Operation
    
    init(operation: Operation, firstNumber: Double, secondNumber: Double) {
        self.operation = operation
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func result() -> Double {
        var result: Double = 0.0
        
        switch operation {
        case .add : result = AddOperation().result(firstNumber: firstNumber, secondNumber: secondNumber)
        case .substract : result = SubstractOperation().result(firstNumber: firstNumber, secondNumber: secondNumber)
        case .multiply : result = MultiplyOperation().result(firstNumber: firstNumber, secondNumber: secondNumber)
        case .divide : result = DivideOperation().result(firstNumber: firstNumber, secondNumber: secondNumber)
        }
        
        return result
    }
 }

let addResult = Calculator(operation: .add, firstNumber: 7, secondNumber: 3).result()
print("덧셈 결과 \(addResult)")

let substractResult = Calculator(operation: .substract, firstNumber: 7, secondNumber: 3).result()
print("뺄셈 결과 \(substractResult)")

let multiplyResult = Calculator(operation: .multiply, firstNumber: 7, secondNumber: 3).result()
print("곱셈 결과 \(multiplyResult)")

let divideResult = Calculator(operation: .divide, firstNumber: 7, secondNumber: 3).result()
print("나눗셈 결과 \(divideResult)")
