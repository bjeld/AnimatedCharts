import SwiftUI
import Charts

struct ProductBarChart: View {
    var data: [Sales]
    
    var range: ClosedRange<Int>
    
    
    var body: some View {
        Chart {
            ForEach(data) { item in
                BarMark(
                    x: .value("Weekday", item.weekday),
                    y: .value("Sales", item.money)
                )
                .annotation(position: AnnotationPosition.top) {
                    Text("\(item.money, format: .number.precision(.fractionLength(2)))")
                        // Add minimum width to avoid truncation artifacts
                        // when value changes
                        .frame(minWidth: 100)
                        .font(.caption2)
                }
                .foregroundStyle(.blue.gradient)
            }
        }
        .chartYScale(domain: range)
    }
}


    
