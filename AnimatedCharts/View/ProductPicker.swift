import SwiftUI

struct ProductPicker: View {
    var options: [ProductPickerOption]
    var selection: Binding<Int>
    
    var body: some View {
        Picker("Product", selection: selection) {
            ForEach(options, id: \.name) { option in
                Text(option.name).tag(option.tag)
            }
        }
        .pickerStyle(.segmented)
    }
}

