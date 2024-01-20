//
//  MainView.swift
//  MyAwardsCollection
//
//  Created by Денис Гиндулин on 18.01.2024.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(
                    awardIsShowing
                    ? "Hide Award"
                    : "Show Award"
                )
                Spacer()
                Image(systemName: "chevron.up.square")
                    .scaleEffect(
                        awardIsShowing
                        ? 2
                        : 1
                    )
                    .rotationEffect(
                        awardIsShowing
                        ? .degrees(180)
                        : .degrees(0)
                    )
            }
            
            Spacer()
            
            if awardIsShowing {
                HeartView()
                    .frame(width: 250, height: 250)
                    .transition(.scaleFromTop)
                    .shadow(color: .pink.opacity(0.9), radius: 50, x: 20, y: 20)
            }
            
            ForEach(0..<3) { iteration in
                Spacer()
            }
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var scaleFromTop: AnyTransition {
        let insertion = AnyTransition.move(edge: .top).combined(with: .scale)
        let removal = AnyTransition.scale.combined(with: .opacity).combined(with: .move(edge: .bottom))
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
