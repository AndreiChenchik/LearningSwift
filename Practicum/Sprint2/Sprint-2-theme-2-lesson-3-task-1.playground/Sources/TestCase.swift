import Foundation

// MARK: - 🛠 Модель данных теста
// - Здесь описана модель тестовых данных
// - ⚠️ Не меняйте этот код

public struct TestCase {
    let ship: Ship
    let result: Ship
}

// MARK: - 🛠 Тестовые данные
// - Здесь описаны тестовые данные
// - ⚠️ Не меняйте этот код

extension Array where Element == TestCase {

    public static let `default`: [TestCase] = [
        TestCase(ship: Ship(name: "Apolon-11", crew: []),
                 result: Ship(name: "Apolon-11", crew: ["Baz"])),
        TestCase(ship: Ship(name: nil, crew: []),
                 result: Ship(name: "", crew: [""])),
    ]
}
