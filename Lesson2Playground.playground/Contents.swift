import UIKit

//var greeting = "Hello, playground"

/*
 Далі будуть константи
 */

let personName: String = "Peter" //declare memory for constant value
let personA = "John"

var carANumber: Int = 12345
print(carANumber)

//personName = "123"
carANumber = 4563
print(carANumber)

let someName: String = String(carANumber) //conversion from Int to String
someName

debugPrint("") //call during debugging - it doesт't compile - just prints for the developer to check and debug

var isOn: Bool = true
isOn = false

var personAge: UInt8 = 0
personAge = 255
//personAge = 355 //error - UInt8 doesn't accept such a value - it can accept values from 0 to 255 only

// Double
var currency: Double = 38.6
currency = 38.0

//збереження байтів
0x00002

var gameScores: Double = 0.0
gameScores = 20.0

//typealias
typealias Scores = Int

var userScores: Scores = 0
userScores = 30

//Tupels - об'єднання типів
var personInfo: (String, Int) = ("Peter", 20)
personInfo = ("John", 12)

personInfo.0 = "Max"
personInfo.1 = 43

var userInfo: (name: String, age: UInt8) = ("A", 22)
userInfo.name = "Den"
userInfo.age = 32
//ще цьому всьому можна присвоїти typealias, для зручності

//Optionals
var dogName: String? //we don't know what the value will be yet, but we have reserved memory for the variable
dogName
dogName = "Max"

//Базові оператори

let a = 12
let b = 25
print(a + b)
print(a - b)
print(a * b)
print(a / b)

//конкатинація
let strA = "123"
let strB = "456"
print(strA + strB)

//% - залишок від ділення (remainder from division)
9 % 4 //1

let isResult = (a != b)

let trueValue = true
let falseValue = false

(trueValue && falseValue)
(trueValue || falseValue)
(trueValue && !falseValue) // did the inversion of the value - !falseValue

//Оператори діапазонів
//частково відповідає за контрол флоу

let somePersonName = "John"
print(somePersonName)
print(somePersonName)
print(somePersonName)

print("start FOR")

for someValue in 0 ..< 3 {
    print(someValue)
}

print("end FOR")

//Колекції
// Масиви (Array) - за допомогою нього можна об'єднати однотипні значення

// створенння порожнього масиву:
//var personNames: [String] = []
//var personNames1 = [String]()
//var personNames2: Array<String> = []
//var personNames3 = Array<String>()

var personNames: [String] = ["John", "Max"]
print(personNames)

personNames.append("Peter")
print(personNames)

personNames[0] //[] - оператор звернення до функції
personNames[2]
personNames[1]

for index in personNames {
    print(index)
}

print("\n")

for index in 1..<personNames.count {
    print(personNames[index])
}

//рандомне виведення значення за індексом
let randomIndex: Int = Int.random(in: 0..<personNames.count)
print(personNames[randomIndex])

var someArray = [Scores]()

personNames.append("Max")
print(personNames)

// Множини (Set)
var userNames: Set<String> = ["John", "Smith"]
print(userNames)

userNames.insert("John")
print(userNames) // не зміниласа колекція - не може містити однакові значення
userNames.contains("John")
//просто моя думка: за допомогою функції перевіряти перед записом нового значення у сет - чи містить він значення - якщо ні - додавати, якщо так - прописати помилку, що не записано - бо помилки автоматично від Xcode не буде - просто не запише.

// Словники (Dictionary)
//ключ має бути типом, який підтримує хешбл протокол - тобто бути унікальним - часто це стрінг (в ObjC був тільки String)
print("\nDictionary\n")
var contactList: [String: Int] = [:]

contactList["Bob"] = 3921789384
print(contactList)
contactList["Bob"] = 39214
print(contactList)
contactList["John"] = 123344
print("\n")
print(contactList)
contactList.removeValue(forKey: "Bob")
print(contactList)
