//
//  ContentView.swift
//  weather-app
//
//  Created by Yusuf Ahmed on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack{
                    Color("primary").ignoresSafeArea()
                    
                    Image("cloudBackground").opacity(0.07).padding([.bottom], 200)
                    
                    VStack {
                       Group {
                            Spacer().frame(height: 60)
                            HStack (alignment: .center , spacing: 145){
                                Button (action: {
                                    print("love")
                                }) {
                                   Text("Search for places").padding([.horizontal], 18)
                                        .padding([.vertical], 11)
                                        .background(Color("grey"))
                                        .foregroundColor(Color("hardWhite"))
                                        .fontWeight(.medium)
                                }
                                
                                Button(action: {}){
                                    Image(systemName: "location.circle.fill")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(Color("grey"))
                                        .background(Color("hardWhite"))
                                        .clipShape(Circle())
                                        .aspectRatio(contentMode: .fill)
                                }
                            }
                           Spacer().frame(height: 76)
                        }
                        
                        Group{
                            Image(systemName: "cloud.drizzle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 174)
                                .foregroundColor(Color("hardWhite"))
                                .clipShape(Circle())
                            
                            Spacer().frame(height:10)
                            
                            HStack  (alignment: .firstTextBaseline){
                                Text("15")
                                    .font(.custom("Raleway-SemiBold",  size: 144))
                                    .foregroundColor(Color("hardWhite"))
                                
                                Text("℃")
                                    .font(.custom("Raleway-Bold",  size: 48))
                                    .foregroundColor(Color("lightGrey"))
                                    .fontWeight(.regular)
                            }
                            
                            Spacer().frame(height: 20)
                            
                            Text("Shower")
                                .font(.custom("Raleway-Regular",  size: 36))
                                .foregroundColor(Color("lightGrey"))
                                .fontWeight(.semibold)
                        }
                        
                        Spacer().frame(height: 48)
                        
                        HStack {
                            
                            Text("Today")
                                .font(.custom("Raleway-Regular",  size: 18))
                                .foregroundColor(Color("hardGrey"))
                                .fontWeight(.semibold)
                            
                            Spacer().frame(width: 16)
                            
                            Text("•")
                                .font(.custom("Raleway-Regular",  size: 18))
                                .foregroundColor(Color("hardGrey"))
                                .fontWeight(.semibold)
                            
                            Spacer().frame(width: 16)
                            
                            Text("Fri, 5 Jun")
                                .font(.custom("Raleway-Regular",  size: 18))
                                .foregroundColor(Color("hardGrey"))
                                .fontWeight(.semibold)
                        }
                        
                        Spacer().frame(height: 33)
                        
                        
                        Label {
                            Text("Helsinki")
                                .font(.custom("Raleway-Regular",  size: 18))
                                .foregroundColor(Color("hardGrey"))
                                .fontWeight(.semibold)
                        } icon: {
                            Image(systemName: "location.circle")
                                .foregroundColor(Color("lightGrey"))
                        }

                         Spacer()
                        
                     }
                }
                
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
