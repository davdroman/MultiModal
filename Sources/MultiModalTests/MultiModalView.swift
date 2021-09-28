import MultiModal
import SwiftUI

// This declaration is used to prove the `multiModal`
// modifier compiles successfully on all Swift versions.

// With a bit of time and effort, it could be expanded into a UI test suite.

struct MultiModalView: View {
    @State var sheetAPresented = false
    @State var sheetBPresented = false
    @State var sheetCPresented = false

    var body: some View {
        VStack(spacing: 20) {
            Button("Sheet A") { sheetAPresented = true }
            Button("Sheet B") { sheetBPresented = true }
            Button("Sheet C") { sheetCPresented = true }
        }
        .multiModal {
            $0.sheet(isPresented: $sheetAPresented) { Text("Sheet A") } // works
            $0.sheet(isPresented: $sheetBPresented) { Text("Sheet B") } // works
            $0.sheet(isPresented: $sheetCPresented) { Text("Sheet C") } // works
        }
    }
}
