// Based off [https://stackoverflow.com/a/57873137].
// TODO: check if this workaround is still required in iOS 16.

import SwiftUI

extension View {
    /// Presents multiple modals (e.g. sheet, alert) at the same view level.
    ///
    /// Example:
    ///
    /// ```swift
    /// .multiModal {
    ///     $0.sheet(isPresented: $sheetAPresented) { Text("Sheet A") }
    ///     $0.sheet(isPresented: $sheetBPresented) { Text("Sheet B") }
    ///     $0.sheet(isPresented: $sheetCPresented) { Text("Sheet C") }
    /// }
    /// ```
    public func multiModal(
        @MultiModalBuilder _ modals: (EmptyView) -> [AnyView]
    ) -> some View {
        modals(EmptyView()).reduce(AnyView(self)) { view, modal in
            AnyView(view.background(modal))
        }
    }
}

#if compiler(>=5.4)
@resultBuilder
public struct MultiModalBuilder {}
#else
@_functionBuilder
public struct MultiModalBuilder {}
#endif

extension MultiModalBuilder {
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
