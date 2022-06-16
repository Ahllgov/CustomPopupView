//
//  Extensions.swift
//  CustomPopupView
//
//  Created by Магомед Ахильгов on 16.06.2022.
//

import Foundation
import SwiftUI

extension View {
    func popupNaviationView<Content: View>(horizontalPadding: CGFloat = 40, show: Binding<Bool>, @ViewBuilder content: @escaping () -> Content) -> some View {
        return self
            .overlay {
                if show.wrappedValue {
                    GeometryReader { proxy in
                        
                        Color.primary
                            .opacity(0.15)
                            .ignoresSafeArea()
                        
                        let size = proxy.size
                        
                        NavigationView {
                            content()
                        }
                        .frame(width: size.width - horizontalPadding, height: size.height/1.7, alignment: .center)
                        .cornerRadius(15)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
            }
    }
}
