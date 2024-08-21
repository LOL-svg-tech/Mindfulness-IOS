//
//  ContentView.swift
//  MindfulnessiOS
//
//  Created by Palaniappan Annamalai on 12/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
        NavigationView {
                    VStack {
                        Text("Hi user!")
                            .font(Font.system(size: 70))
                            .bold()
                            .padding(.leading, 0)
                        
                        Spacer().frame(height: 0)
                        
                        NavigationLink(destination: Recommendations()) {
                            ZStack {
                                Image("Mindone")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 350, height: 200)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                
                                Text("Recommendations")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        .padding(.horizontal, 18)
                        
                        Spacer().frame(height: 20)
                        
                        NavigationLink(destination: Saved_Guides()) {
                            ZStack {
                                Image("mindtwo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 350, height: 200)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                
                                Text("Saved Guides")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        .padding(.horizontal, 18)
                        
                        Spacer().frame(height: 20)
                        
                        Spacer()
                    }
                }
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                
                Library()
                    .tabItem {
                        Label("Library", systemImage: "plus.square.fill.on.square.fill")
                    }
                
                
                
                Settings()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
            
        }
    }


#Preview {
    ContentView()
}
