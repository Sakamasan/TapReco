//
//  LottieAnimationView.swift
//  TapReco
//
//  Created by 佐川 晴海 on 2021/09/07.
//

import SwiftUI
import Lottie

struct LottieAnimationView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    
    var animationView = AnimationView()
    
    func makeUIView(context: UIViewRepresentableContext<LottieAnimationView>) -> UIView {
        let view = UIView(frame: .zero)
        
        animationView.animation = Animation.named(name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {}
}
