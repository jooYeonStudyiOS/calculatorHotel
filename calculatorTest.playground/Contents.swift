class Calculator {
    let firstNumber: Double
    let secondNumber: Double
    
    init(firstNumber: Double, secondNumber: Double) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func plusOperation() -> Double {
        return firstNumber + secondNumber
    }
    
    func minusOperation() -> Double {
        return firstNumber - secondNumber
    }
    
    func multiplyOperation() -> Double {
        return firstNumber * secondNumber
    }
    
    func dividedOperation() -> Double {
        return firstNumber / secondNumber
    }
    
    func truncatingRemainderOperation() -> Double {
        return firstNumber.truncatingRemainder(dividingBy: secondNumber)
    }
}

let calculator = Calculator(firstNumber: 3, secondNumber: 7)
let firstNumber = calculator.firstNumber
let secondNumber = calculator.secondNumber

let plusResult = calculator.plusOperation()
print("\(firstNumber) + \(secondNumber) = \(plusResult)")

let minusResult = calculator.minusOperation()
print("\(firstNumber) - \(secondNumber) = \(minusResult)")

let multiplyResult = calculator.multiplyOperation()
print("\(firstNumber) * \(secondNumber) = \(multiplyResult)")

let divideResult = calculator.dividedOperation()
print("\(firstNumber) / \(secondNumber) = \(divideResult)")

let remainderResult = calculator.truncatingRemainderOperation()
print("\(firstNumber) % \(secondNumber) = \(remainderResult)")
