import Benchmark
import MultiModal
import SwiftUI

benchmark("Modifier") {
    _ = EmptyView().multiModal {
        $0.sheet(isPresented: .constant(false)) { Text("Sheet 1") }
        $0.sheet(isPresented: .constant(false)) { Text("Sheet 2") }
        $0.sheet(isPresented: .constant(false)) { Text("Sheet 3") }
        $0.sheet(isPresented: .constant(false)) { Text("Sheet 4") }
        $0.sheet(isPresented: .constant(false)) { Text("Sheet 5") }
    }
}

Benchmark.main()
