import Foundation

struct Sales: Identifiable {
    let timestamp: Date
    let weekday: String
    let money: Double
    
    var id: String { weekday }
}
