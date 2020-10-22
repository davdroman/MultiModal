// Based off [https://stackoverflow.com/a/57873137].
// TODO: check if this workaround is still required in SwiftUI 3.

import SwiftUI

extension View {
    /// Presents multiple sheets at the same view level.
    ///
    /// ```swift
    /// .multiSheet {
    ///     $0.sheet(isPresented: $sheetAPresented) { Text("Sheet A") }
    ///     $0.sheet(isPresented: $sheetBPresented) { Text("Sheet B") }
    ///     $0.sheet(isPresented: $sheetCPresented) { Text("Sheet C") }
    /// }
    /// ```
    public func multiSheet(
        @MultiSheetCollector _ sheets: (EmptyView) -> [AnyView]
    ) -> some View {
        sheets(EmptyView()).reduce(AnyView(self)) { view, sheet in
            AnyView(view.background(sheet))
        }
    }
}

@_functionBuilder
public struct MultiSheetCollector {
    public static func buildBlock<V0: View>(
        _ v0: V0
    ) -> [AnyView] {
        [AnyView(v0)]
    }

    public static func buildBlock<V0: View, V1: View>(
        _ v0: V0,
        _ v1: V1
    ) -> [AnyView] {
        [AnyView(v0), AnyView(v1)]
    }

    public static func buildBlock<V0: View, V1: View, V2: View>(
        _ v0: V0,
        _ v1: V1,
        _ v2: V2
    ) -> [AnyView] {
        [AnyView(v0), AnyView(v1), AnyView(v2)]
    }

    public static func buildBlock<V0: View, V1: View, V2: View, V3: View>(
        _ v0: V0,
        _ v1: V1,
        _ v2: V2,
        _ v3: V3
    ) -> [AnyView] {
        [AnyView(v0), AnyView(v1), AnyView(v2), AnyView(v3)]
    }

    public static func buildBlock<V0: View, V1: View, V2: View, V3: View, V4: View>(
        _ v0: V0,
        _ v1: V1,
        _ v2: V2,
        _ v3: V3,
        _ v4: V4
    ) -> [AnyView] {
        [AnyView(v0), AnyView(v1), AnyView(v2), AnyView(v3), AnyView(v4)]
    }
}
