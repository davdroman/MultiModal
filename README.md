# MultiSheet

By default, SwiftUI views with multiple `.sheet` calls in the same body will only use the last one specified in the chain and ignore all the previous ones. 

```swift
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
        .sheet(isPresented: $sheetAPresented) { Text("Sheet A") } // does not work
        .sheet(isPresented: $sheetBPresented) { Text("Sheet B") } // does not work
        .sheet(isPresented: $sheetCPresented) { Text("Sheet C") } // works
    }
}
```

**MultiSheet** brings a `.multiSheet` modifier to declare multiple sheet modifiers in the same view body.

```swift
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
            $0.sheet(isPresented: $sheetAPresented) { Text("Sheet A") } // works
            $0.sheet(isPresented: $sheetBPresented) { Text("Sheet B") } // works
            $0.sheet(isPresented: $sheetCPresented) { Text("Sheet C") } // works
        }
    }
}
```

**Note:**

MultiSheet does not enable "nested" sheets; it just enables multiple sheets appearing within a view body **one at a time**. For this reason, it's recommended that your sheets' presentation be dependant on a source of truth that ensures only one of them is presented at any given time.

Hopefully Apple will introduce support for multiple sheets in a future iteration of SwiftUI, rendering this library unnecessary. 
