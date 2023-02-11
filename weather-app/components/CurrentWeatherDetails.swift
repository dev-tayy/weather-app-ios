//
//  HomeContentView.swift
//  weather-app
//
//  Created by Yusuf Ahmed on 04/02/2023.
//

import SwiftUI

struct CurrentWeatherDetails: View {
    @ScaledMetric var size : CGFloat = 1
    @State private var selection : String? = nil
    @State private var showModalSheet = false
    var body: some View {
        NavigationStack {
            VStack {
                Group {
                    HStack (alignment: .center , spacing: 120 * size){
                        
                        
                        Button (action: {
                            showModalSheet = true
                        }) {
                            Text("Search for places").padding([.horizontal], 20 * size)
                                .padding([.vertical], 11)
                                .background(Color("grey"))
                                .foregroundColor(Color("hardWhite"))
                                .fontWeight(.medium)
                        }.sheet(isPresented: $showModalSheet) {
                           SearchWeatherModal()
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
                    Spacer().frame(height: 76 * size)
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
                            .font(.custom("Raleway-SemiBold",  size: 144 + size))
                            .foregroundColor(Color("hardWhite"))
                        
                        Text("℃")
                            .font(.custom("Raleway-Bold",  size: 48 + size))
                            .foregroundColor(Color("lightGrey"))
                            .fontWeight(.regular)
                    }
                    
                    Spacer().frame(height: 20)
                    
                    Text("Shower")
                        .font(.custom("Raleway-Regular",  size: 36 + size))
                        .foregroundColor(Color("lightGrey"))
                        .fontWeight(.semibold)
                }
                
                Spacer().frame(height: 48)
                
                HStack {
                    
                    Text("Today")
                        .font(.custom("Raleway-Regular",  size: 18 + size))
                        .foregroundColor(Color("hardGrey"))
                        .fontWeight(.semibold)
                    
                    Spacer().frame(width: 16 * size)
                    
                    Text("•")
                        .font(.custom("Raleway-Regular",  size: 18 + size))
                        .foregroundColor(Color("hardGrey"))
                        .fontWeight(.semibold)
                    
                    Spacer().frame(width: 16 * size)
                    
                    Text("Fri, 5 Jun")
                        .font(.custom("Raleway-Regular",  size: 18 + size))
                        .foregroundColor(Color("hardGrey"))
                        .fontWeight(.semibold)
                }
                
                Spacer().frame(height: 33 * size)
                
                Label {
                    Text("Helsinki")
                        .font(.custom("Raleway-Regular",  size: 18 + size))
                        .foregroundColor(Color("hardGrey"))
                        .fontWeight(.semibold)
                } icon: {
                    Image(systemName: "location.circle")
                        .foregroundColor(Color("lightGrey"))
                }
                
                Spacer()
                
            }
            
        }
        
    }
}


struct CurrentWeatherDetails_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherDetails()
    }
}

