//
//  ContentView.swift
//  weather-app
//
//  Created by Yusuf Ahmed on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    let columns = [GridItem(.fixed(150)), GridItem(.fixed(150))]
    @ScaledMetric var size : CGFloat = 1
    var body: some View {
        NavigationStack{
            ScrollView {
                Spacer().frame(height: 60 * size)
                ZStack{
                    Color("primary").ignoresSafeArea()
                    
                    Image("cloudBackground").opacity(0.07).padding([.bottom], 200 * size)
                    
                    HomeContentView()
                    
                }
                
                Spacer().frame(height: 100 * size)
                
                VStack (alignment: .leading) {
                    Spacer().frame(height: 52 * size)
                    LazyVGrid (columns: columns) {
                        ForEach(0..<5) { index in
                            SubWeatherView()
                        }
                        
                        Divider()
                        Spacer()
                    }
                    Spacer().frame(height: 52 * size)
                    
                    Text("Today's Highlights")
                        .font(.custom("Raleway-Bold", size: 24))
                        .foregroundColor(Color("hardWhite"))
                        .padding(.leading, 170 * size)
                    
                    ForEach(0..<5) {index in
                        HighlightView()
                            .padding(.horizontal, 170 * size )
                    }
                    
                    Spacer().frame(height: 96 * size)
               
                    
                    
                }.background(Color("darkBackground"))
                
            }  .toolbarBackground(.visible, for: .navigationBar)
                .toolbarColorScheme(.light, for: .navigationBar)
                .ignoresSafeArea()
                .background(Color("primary"))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

