import SwiftUI

struct ProductSalesSum: View {
    var productName: String
    
    var sum: Double
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text("Weekly \(productName) Sales")
            .font(.title2)
            .transaction { transaction in
                // Disables animation for the Title text
                transaction.animation = nil
            }
            TextAnimatableValue(value: sum)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .monospacedDigit()
        }
    }
}
