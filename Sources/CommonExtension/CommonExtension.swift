
import Foundation
import SwiftUI

public extension View{
    
    @ViewBuilder
    func `if`<Transform: View>(_ condition: Bool, transform: (Self) -> Transform) -> some View{
        if condition {
            transform(self)
        }else{
            self
        }
    }
    
    @ViewBuilder
    func ifLet<V, Transform: View> (
        _ value: V?,
        transform: (Self, V) -> Transform
    ) -> some View {
        if let value = value {
            transform(self, value)
        }else{
            self
        }
    }
}
// MARK: debug
public extension View{
    func debugPrint(value: Any...) -> some View{
        #if DEBUG
        print(value)
        #endif
        return self;
    }
}


