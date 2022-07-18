import Foundation

// MARK: - ℹ️ Инструкция
//
// Чтобы выполнить практическое задание, вам потребуется:
// 1. Прочитайте условие задания
// 2. Напишите ваше решение ниже в этом файле в разделе "Решение" под class Solution: SolutionProtocol {.
// 3. После того как решение будет готово, запустите Playground,
//    чтобы проверить свое решение тестами

// MARK: - ℹ️ Условие задания
//
// "Космический корабль"
// Изучите структуру `Ship` описанную в файле `SolutionProtocol`
// Создайте опциональную переменную `starShip` типа `Ship`
// Создайте функцию `getShipName`, которая возвращает значение свойства `name` у переменной `starShip` если оно есть. Или пустую строку "" в противном случае
// Создайте функцию addCrew, которая принимает один строковый параметр `member` и добавляет его в массив `crew` в переменной `starShip`
// Создайте функцию `getFirstCrewMember`, которая возвращает первый элемент массива `crew` в переменной `starShip`. Если массив пуст, то функция должна вернуть пустую строку ""
//

// MARK: - 🧑‍💻 Решение
// Напишите ваше решение ЗДЕСЬ
// Начните с выполнения требований протокола

// --- НАЧАЛО КОДА С РЕШЕНИЕМ ---
class Solution: SolutionProtocol {
    var starShip: Ship?
    
    func getShipName() -> String {
        starShip?.name ?? ""
    }
    
    func addCrew(member: String) {
        starShip?.crew.append(member)
    }
    
    func getFirstCrewMember() -> String {
        starShip?.crew.first ?? ""
    }
}
// --- КОНЕЦ КОДА С РЕШЕНИЕМ ---

// MARK: - 🛠 Тесты
// - Здесь содержится код запуска тестов для вашего решения
// - ⚠️ Не меняйте этот код

let solution: SolutionProtocol = Solution()
var testRunner = TestRunner(solution: solution)
testRunner.runTests(testCases: .default)
