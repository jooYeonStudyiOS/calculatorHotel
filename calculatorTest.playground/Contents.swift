enum Operation {
    case add
    case substract
    case multiply
    case divide
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
    
    init(firstNumber: Double, secondNumber: Double) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
}

let calculator = Calculator(firstNumber: 3, secondNumber: 7)
let firstNumber = calculator.firstNumber
let secondNumber = calculator.secondNumber

//let plusResult = calculator.plusOperation()
//print("\(firstNumber) + \(secondNumber) = \(plusResult)")
//
//let minusResult = calculator.minusOperation()
//print("\(firstNumber) - \(secondNumber) = \(minusResult)")
//
//let multiplyResult = calculator.multiplyOperation()
//print("\(firstNumber) * \(secondNumber) = \(multiplyResult)")
//
//let divideResult = calculator.dividedOperation()
//print("\(firstNumber) / \(secondNumber) = \(divideResult)")
//
//let remainderResult = calculator.truncatingRemainderOperation()
//print("\(firstNumber) % \(secondNumber) = \(remainderResult)")
