import SwiftUI
import Charts

struct ProductBarChart: View {
    var data: [Sales]
    
    var range: ClosedRange<Int>
    var xrange: ClosedRange<Date> = Calendar.current.date(byAdding: .hour, value: -4, to: Date())!...Calendar.current.date(byAdding: .hour, value: 3, to: Date())!
    @State var scale : CGFloat = 1.0
    
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
        .chartXScale(domain: xrange)
        .scaleEffect(scale)
        .clipped()
        .gesture(
            MagnificationGesture().onChanged { value in
            self.scale = value.magnitude
        })
    }
}


    
