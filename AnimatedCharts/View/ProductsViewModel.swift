import Foundation



class ProductsViewModel: ObservableObject {
    @Published var selectedProductIndex = 0
    
    var productPickerOptions = [
        ProductPickerOption(name: "Smart Pen", tag: 0),
        ProductPickerOption(name: "Smart Pillow", tag: 1),
        ProductPickerOption(name: "Smart Grill", tag: 2),
    ]
    
  
    private let productsData = [
        Product(
            name: "Smart Pen",
            data: [
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -1, to: Date())!, weekday: "Mon", money: 53.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -2, to: Date())!, weekday: "Tue", money: 70.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -3, to: Date())!, weekday: "Wed", money: 60.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -4, to: Date())!, weekday: "Thu", money: 50.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -5, to: Date())!, weekday: "Fri", money: 85.00),
            ]),
        Product(
            name: "Smart Pillow",
            data: [
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -1, to: Date())!, weekday: "Mon", money: 170.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -2, to: Date())!, weekday: "Tue", money: 200.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -3, to: Date())!, weekday: "Wed", money: 250.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -4, to: Date())!, weekday: "Thu", money: 260.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -5, to: Date())!, weekday: "Fri", money: 420.00),
        ]),
        Product(
            name: "Smart Grill",
            data: [
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -1, to: Date())!, weekday: "Mon", money: 500.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -2, to: Date())!, weekday: "Tue", money: 550.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -3, to: Date())!, weekday: "Wed", money: 600.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -4, to: Date())!, weekday: "Thu", money: 560.00),
            .init(timestamp: Calendar.current.date(byAdding: .hour, value: -5, to: Date())!, weekday: "Fri", money: 704.00),
        ]),
    ]
    
    var product: Product {
        return productsData[selectedProductIndex]
    }
    
    var productSalesRange = 0...1000
}
