import SwiftUI

struct MultiModalDemoView_Previews: PreviewProvider {
    struct WithoutView: View {
        @State var sheetAPresented = false
        @State var sheetBPresented = false

        @State var alertAPresented = false
        @State var alertBPresented = false

        var body: some View {
            VStack(spacing: 60) {
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

    @ViewBuilder
    static var previews: some View {
        WithoutView().previewDisplayName("Without MultiModal")
        WithView().previewDisplayName("With MultiModal")
    }
}
