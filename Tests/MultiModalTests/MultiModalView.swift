import MultiModal
import SwiftUI

// This declaration is used to prove the `multiModal`
// modifier compiles successfully on all Swift versions.
// Additionally, it ensures that unlimited modals can be
// used from Swift 5.7 onwards thanks to `buildPartialBlock`.

// With a bit of time and effort, it could be expanded into a UI test suite.

struct MultiModalView: View {
    var body: some View {
        EmptyView().multiModal {
            #if compiler(>=5.7)
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 1") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 2") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 3") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 4") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 5") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 6") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 7") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 8") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 9") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 10") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 11") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 12") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 13") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 14") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 15") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 16") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 17") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 18") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 19") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 20") }
            #else
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 1") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 2") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 3") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 4") }
            $0.sheet(isPresented: .constant(false)) { Text("Sheet 5") }
            #endif
        }
    }
}
