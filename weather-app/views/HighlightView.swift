//
//  HighlightView.swift
//  weather-app
//
//  Created by Yusuf Ahmed on 05/02/2023.
//

import SwiftUI


struct HighlightView: View {
    var body: some View {
        VStack {
            
            Text("Wind status")
                .padding(.top, 22)
                .foregroundColor(Color("hardWhite"))
                .font(.custom("Raleway-Regular", size: 16))
                .fontWeight(.semibold)
            
            Spacer().frame(height: 22)
            
            HStack {
                Text("7")
                    .foregroundColor(Color("hardWhite"))
                    .font(.custom("Raleway-Regular", size: 64))
                    .fontWeight(.bold)
                
                Text("mph")
                    .foregroundColor(Color("hardWhite"))
                    .font(.custom("Raleway-Regular", size: 36))
                    .fontWeight(.semibold)
            }
            
            Spacer().frame(height: 33)
            
            Label {
                Text("Helsinki")
                    .font(.custom("Raleway-Regular",  size: 18))
                    .foregroundColor(Color("hardGrey"))
                    .fontWeight(.semibold)
            } icon: {
                Image(systemName: "location.fill")
                    .resizable()
                    .padding(.all, 5)
                    .frame(height: 20)
                    .frame(width: 20)
                    .scaledToFit()
                    .foregroundColor(Color("hardWhite"))
                    .background(Color("hardGrey"))
                    .clipShape(Circle())
                
                
            }
            Divider()
            Spacer()
        }.background(Color("primary"))
            .frame(height: 204)
            .padding(.vertical, 16)
    }
}

struct HighlightView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightView()
    }
}
