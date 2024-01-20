//
//  AwardsView.swift
//  MyAwardsCollection
//
//  Created by Денис Гиндулин on 18.01.2024.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 180, height: 180)
                    PathView()
                        .frame(width: 180, height: 180)
                    CurvesView()
                        .frame(width: 180, height: 180)
                    HeartView()
                        .frame(width: 180, height: 180)
                }
            }
            .navigationTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
