//
//  SubWeatherView.swift
//  weather-app
//
//  Created by Yusuf Ahmed on 04/02/2023.
//

import SwiftUI

struct SubWeatherView: View {
    var body: some View {
        VStack {
            Text("Tomorrow")
                .foregroundColor(Color("hardWhite"))
                .font(.custom("Raleway-Regular", size: 16))
                .fontWeight(.semibold)
                .padding([.top, .horizontal], 20)
            
            Spacer().frame(height: 10)
            
            Image(systemName: "cloud.drizzle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 56, height: 62)
                .foregroundColor(Color("hardWhite"))
                .clipShape(Circle())
            
            Spacer().frame(height: 31)
            
            HStack {
                Text("16°C")
                    .foregroundColor(Color("hardWhite"))
                    .font(.custom("Raleway-Regular", size: 16))
                    .fontWeight(.semibold)
                
                Spacer().frame(width: 16)
                Text("16°C")
                    .foregroundColor(Color("lightGrey"))
                    .font(.custom("Raleway-Regular", size: 16))
                    .fontWeight(.semibold)
                
            } .padding(.bottom, 20)
        }.background(Color("primary"))
    }
}

struct SubWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        SubWeatherView()
    }
}
