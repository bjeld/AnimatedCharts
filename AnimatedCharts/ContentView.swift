import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ProductsViewModel()
            
    var body: some View {
        
        VStack(alignment: .leading, spacing: 24) {
        
            ProductSalesSum(
                productName: viewModel.product.name,
                sum: viewModel.product.data.sum(\.money)
            )
            
            ProductBarChart(
                data: viewModel.product.data,
                range: viewModel.productSalesRange
            )
            
            ProductPicker(
                options: viewModel.productPickerOptions,
                selection: $viewModel.selectedProductIndex.animation(.easeInOut(duration: 0.6))
            )
            
        }.padding()
    }
}
