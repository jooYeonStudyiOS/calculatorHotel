class Calculator {
    let firstNumber: Int
    let secondNumber: Int
    
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func plusOperation() -> Int {
        return firstNumber + secondNumber
    }
    
    func minusOperation() -> Int {
        return firstNumber - secondNumber
    }
    
    func multiplyOperation() -> Int {
        return firstNumber * secondNumber
    }
    
    func dividedOperation() -> Int {
        return firstNumber / secondNumber
    }
}

let calculator = Calculator(firstNumber: 3, secondNumber: 7)
let firstNumber = calculator.firstNumber
let secondNumber = calculator.secondNumber

let plusResult = calculator.plusOperation()
print("\(firstNumber) + \(secondNumber) = \(plusResult)")

let minusResult = calculator.minusOperation()
print("\(firstNumber) / \(secondNumber) = \(minusResult)")

let multiplyResult = calculator.multiplyOperation()
print("\(firstNumber) * \(secondNumber) = \(multiplyResult)")

let divideResult = calculator.dividedOperation()
print("\(firstNumber) / \(secondNumber) = \(divideResult)")
