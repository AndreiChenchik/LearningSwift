import Foundation

// MARK: - ℹ️ Инструкция
//
// Чтобы выполнить практическое задание, вам потребуется:
// 1. Прочитайте условие задания
// 2. Напишите ваше решение ниже в этом файле в разделе "Решение".
// 3. После того как решение будет готово, запустите Playground,
//    чтобы проверить свое решение тестами

// MARK: - ℹ️ Условие задания
//
// 1. Создайте структуру `Planet`
// 2. Добавьте в нее следующие свойства:
//    - name - строковый тип
//    - galaxy - строковый тип
//    - isPopulated - булевый тип
//    - description - строковый тип
// 3. Добавьте инициализатор, принимающий параметры name, galaxy, isPopulated и сохраняющий значения в соответствующие поля структуры
// 4. Свойство description должно инициализироваться из других свойств через пробел, в следующем формате:
//      "<name> <galaxy> <isPopulated>"

// MARK: - 🧑‍💻 Решение

struct Planet: SolutionProtocol {
    // --- НАЧАЛО КОДА С РЕШЕНИЕМ ---
    var name: String
    var galaxy: String
    var isPopulated: Bool
    var description: String
    
    init(name: String, galaxy: String, isPopulated: Bool) {
        self.name = name
        self.galaxy = galaxy
        self.isPopulated = isPopulated
        
        description = "\(name) \(galaxy) \(isPopulated)"
    }


    // --- КОНЕЦ КОДА С РЕШЕНИЕМ ---
}

let earth = Planet(name: "Земля",
                   galaxy: "Млечный путь",
                   isPopulated: true)

// MARK: - 🛠 Тесты
// - Здесь содержится код запуска тестов для вашего решения
// - ⚠️ Не меняйте этот код

TestRunner.runTests(.default(earth))

