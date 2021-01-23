// Playground generated with 🏟 Arena (https://github.com/finestructure/arena)
// ℹ️ If running the playground fails with an error "no such module ..."
//    go to Product -> Build to re-trigger building the SPM package.
// ℹ️ Please restart Xcode if autocomplete is not working.

import SwiftUI
import MultiModal
import PlaygroundSupport

struct WithoutView: View {
    @State var sheetAPresented = false
    @State var sheetBPresented = false

    @State var alertAPresented = false
    @State var alertBPresented = false

    var body: some View {
        VStack(spacing: 60) {
            Text("Without MultiModal")
            VStack(spacing: 20) {
                Button("Sheet A") { self.sheetAPresented = true }
                Button("Sheet B") { self.sheetBPresented = true }
            }
            VStack(spacing: 20) {
                Button("Alert A") { self.alertAPresented = true }
                Button("Alert B") { self.alertBPresented = true }
            }
        }
        .sheet(isPresented: $sheetAPresented) { Text("Sheet A") }
        .sheet(isPresented: $sheetBPresented) { Text("Sheet B") }

        .alert(isPresented: $alertAPresented) { Alert(title: Text("Alert A")) }
        .alert(isPresented: $alertBPresented) { Alert(title: Text("Alert B")) }
    }
}

struct WithView: View {
    @State var sheetAPresented = false
    @State var sheetBPresented = false

    @State var alertAPresented = false
    @State var alertBPresented = false

    var body: some View {
        VStack(spacing: 60) {
            Text("With MultiModal")
            VStack(spacing: 20) {
                Button("Sheet A") { self.sheetAPresented = true }
                Button("Sheet B") { self.sheetBPresented = true }
            }
            VStack(spacing: 20) {
                Button("Alert A") { self.alertAPresented = true }
                Button("Alert B") { self.alertBPresented = true }
            }
        }
        .multiModal {
            $0.sheet(isPresented: $sheetAPresented) { Text("Sheet A") }
            $0.sheet(isPresented: $sheetBPresented) { Text("Sheet B") }

            $0.alert(isPresented: $alertAPresented) { Alert(title: Text("Alert A")) }
            $0.alert(isPresented: $alertBPresented) { Alert(title: Text("Alert B")) }
        }
    }
}

//let view = UIHostingController(rootView: WithoutView())
let view = UIHostingController(rootView: WithView())
view.view.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = view
