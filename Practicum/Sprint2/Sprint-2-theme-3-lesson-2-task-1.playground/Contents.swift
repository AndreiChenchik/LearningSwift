import Foundation

// MARK: - ℹ️ Инструкция
//
// Чтобы выполнить практическое задание, вам потребуется:
// 1. Прочитайте условие задания
// 2. Изучите протокол решения `SolutionProtocol` в файле "SolutionProtocol"
//    - В левом боковом меню откройте папку Sources
//    - Нажмите один раз на файл "SolutionProtocol"
// 3. Напишите ваше решение ниже в этом файле в разделе "Решение".
// 4. После того как решение будет готово, запустите Playground,
//    чтобы проверить свое решение тестами

// MARK: - ℹ️ Условие задания
// «Смартфоны»
//
// 1. Необходимо создать родительский класс `Phone`,
//    соответствующий протоколу `SolutionProtocol` (написан в файле "SolutionProtocol").
//
//    Смысл требований протокола:
//  - переменную `diagonal` типа Double с информацией о диагонали экрана телефона
//  - переменную `os` типа `OS` с информацией о виде операционной системы телефона
//  - переменную `name` типа `String` содержащую название устройства
//  - функцию `update(newOS: OS)` которая обновляет значение переменной `os` на значение параметра `newOS`
//  - функцию `call() -> String` которая выводит информацию о телефоне
//  - функцию `rename(newName: String)` которая обновляет значение переменной `name` на значение параметра `newName`
//
// 2. Необходимо создать два класса телефонов: `iPhone` и `Samsung`, которые наследуют класс `Phone`
//  - При вызове функции `call()` у класса `iPhone`, функция должна вернуть строку:
//    "Привет, я <имя телефона> <операционная система и её версия>"
//  - При звонке `Samsung` функция должна вернуть строку:
//    "Привет, я <имя телефона> <диагональ экрана>".
//
// 3. Создайте и сохраните в переменную `iphone` экземпляр класса `iPhone` с параметрами:
//  - диагональ 6.4
//  - операционная система iOS версии "15.0"
//  - название устройства "my iPhone"
//
// 4. Создайте и сохраните в переменную `samsung` экземпляр класса `Samsung` с параметрами:
//  - диагональ 7.0
//  - операционная система android версии "11"
//  - название устройства "Samsung"
// MARK: - 🧑‍💻 Решение
// --- НАЧАЛО КОДА С РЕШЕНИЕМ ---
class Phone: SolutionProtocol {
    var diagonal: Double
    var os: OS
    var name: String
    
    init(diagonal: Double, os: OS, name: String) {
        self.diagonal = diagonal
        self.os = os
        self.name = name
    }
    
    func call() -> String {
        "\(name) \(os) \(diagonal)"
    }
    
    func rename(newName: String) {
        name = newName
    }
    
    func update(newOS: OS) {
        os = newOS
    }
}

class iPhone: Phone {
    override func call() -> String {
        "Привет, я \(name) \(os)"
    }
}

class Samsung: Phone {
    override func call() -> String {
        "Привет, я \(name) \(diagonal)"
    }
}

var iphone = iPhone(diagonal: 6.4, os: OS.iOS(version: "15.0"), name: "my iPhone")
var samsung = Samsung(diagonal: 7.0, os: OS.android(version: "11"), name: "Samsung")

// --- КОНЕЦ КОДА С РЕШЕНИЕМ ---

// MARK: - 🛠 Тесты
// - Здесь содержится код запуска тестов для вашего решения
// - ⚠️ Не меняйте этот код

TestRunner.runTests(
    .default(iphone, samsung)
)
