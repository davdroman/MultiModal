import SwiftUI

struct MultiSheetDemoView_Previews: PreviewProvider {
    struct MultiSheetDemoView: View {
        @State var sheetAPresented = false
        @State var sheetBPresented = false
        @State var sheetCPresented = false

        var body: some View {
            VStack(spacing: 20) {
                Button("Sheet A") { sheetAPresented = true }
                Button("Sheet B") { sheetBPresented = true }
                Button("Sheet C") { sheetCPresented = true }
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
                Button("Sheet A") { sheetAPresented = true }
                Button("Sheet B") { sheetBPresented = true }
                Button("Sheet C") { sheetCPresented = true }
            }
            .sheet(isPresented: $sheetAPresented) { Text("Sheet A") }
            .sheet(isPresented: $sheetBPresented) { Text("Sheet B") }
            .sheet(isPresented: $sheetCPresented) { Text("Sheet C") }
        }
    }

    static var previews: some View {
        MultiSheetDemoView().previewDisplayName("With MultiSheet")
        NoMultiSheetDemoView().previewDisplayName("Without MultiSheet")
    }
}
