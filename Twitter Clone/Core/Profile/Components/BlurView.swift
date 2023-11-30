//
//  BlurView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 27.11.2023.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialDark) )
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}
