import SwiftUI
import MultiSheet

struct MultiSheetDemoView_Previews: PreviewProvider {
    struct MultiSheetDemoView: View {
        @State var sheetAPresented = false
        @State var sheetBPresented = false
        @State var sheetCPresented = false

        var body: some View {
            VStack(spacing: 20) {
                Button("Sheet A") { self.sheetAPresented = true }
                Button("Sheet B") { self.sheetBPresented = true }
                Button("Sheet C") { self.sheetCPresented = true }
            }
            .multiSheet {
                $0.sheet(isPresented: $sheetAPresented) { Text("Sheet A") }
                $0.sheet(isPresented: $sheetBPresented) { Text("Sheet B") }
                $0.sheet(isPresented: $sheetCPresented) { Text("Sheet C") }
            }
        }
    }

    struct NoMultiSheetDemoView: View {
        @State var sheetAPresented = false
        @State var sheetBPresented = false
        @State var sheetCPresented = false

        var body: some View {
            VStack(spacing: 20) {
                Button("Sheet A") { self.sheetAPresented = true }
                Button("Sheet B") { self.sheetBPresented = true }
                Button("Sheet C") { self.sheetCPresented = true }
            }
            .sheet(isPresented: $sheetAPresented) { Text("Sheet A") }
            .sheet(isPresented: $sheetBPresented) { Text("Sheet B") }
            .sheet(isPresented: $sheetCPresented) { Text("Sheet C") }
        }
    }

    @ViewBuilder
    static var previews: some View {
        MultiSheetDemoView().previewDisplayName("With MultiSheet")
        NoMultiSheetDemoView().previewDisplayName("Without MultiSheet")
    }
}
