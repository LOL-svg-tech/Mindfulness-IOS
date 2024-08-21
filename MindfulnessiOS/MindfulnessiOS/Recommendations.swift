//
//  Recommendations.swift
//  MindfulnessiOS
//
//  Created by Palaniappan Annamalai on 19/08/2024.
//

import SwiftUI

struct Recommendations: View {
    var body: some View {
            TabView {
                ScrollView{
                VStack {
                    Text("Recommendations")
                        .font(Font.system(size: 40))
                        .bold()
                        .padding(.leading, 0)
                    
                    Spacer().frame(height: 10)
                    
                    
                    ZStack {
                        Image("Dailymed")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 350, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        Text("Daily Meditations")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                    }
                    .padding(.horizontal, 18)
                    
                    
                    ZStack {
                        Image("MedRollWaves")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 350, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        Text("Meditation to Rolling Waves")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                    }
                    .padding(.horizontal, 18)
                    
                    Spacer()
                    
                    
                }
                
                
            }
            
        }
    }
}
#Preview {
    Recommendations()
}
