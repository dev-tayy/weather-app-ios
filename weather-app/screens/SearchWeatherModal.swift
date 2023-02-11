//
//  SearchWeatherScreen.swift
//  weather-app
//
//  Created by Yusuf Ahmed on 07/02/2023.
//

import SwiftUI

struct SearchWeatherModal: View {
    @Environment(\.dismiss) var dismiss
    @State private var location = ""
    var body: some View {
        ZStack {
            Color("primary").edgesIgnoringSafeArea(.all)
            
            VStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color("hardWhite"))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                YBox(h: 30)
                
                HStack {
                    ZStack{
                        if location.isEmpty {
                            Label {
                                Text("search location")
                                    .font(.custom("Raleway-Regular", size: 16))
                                    .foregroundColor(Color("grey"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                            } icon: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color("grey"))
                                
                            }.padding([.horizontal, .vertical], 15)
                        }
                        
                        TextField("", text: $location)
                            .padding([.horizontal, .vertical], 15)
                            .border(Color("hardWhite"), width: 1)
                            .foregroundColor(Color("hardWhite"))
                        
                    }
                    
                    XBox(w: 12)
                    
                    Button {
                        print(location)
                    } label: {
                        Text("Search")
                            .padding(.horizontal, 14)
                            .padding(.vertical, 17)
                            .font(.custom("Raleway-Regular", size: 16))
                            .background(Color("lightBlue"))
                            .foregroundColor(Color("hardWhite"))
                    }
                    
                    
                }
                
                YBox(h: 30)
                
                Button {
                    print("location item tapped")
                } label: {
                    HStack{
                        Text("Lagos")
                            .font(.custom("Raleway-Regular", size: 16))
                            .foregroundColor(Color("hardWhite"))
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(Color("grey"))
                            
                    }.padding(.vertical, 23)
                        .padding(.horizontal, 14)
                        .border(Color("hardWhite"), width: 1)
                }

                
                
                
                
                
                Spacer()
            }.padding(.horizontal, 13)
                .padding(.top, 18)
        }
        
    }
}

struct SearchWeatherModal_Previews: PreviewProvider {
    static var previews: some View {
        SearchWeatherModal()
    }
}

struct XBox: View {
    @ScaledMetric var size : CGFloat = 1
    var w : Double;
    var body: some View {
        Spacer().frame(width: w * 1)
    }
}

struct YBox: View {
    @ScaledMetric var size : CGFloat = 1
    var h : Double;
    var body: some View {
        Spacer().frame(height: h * 1)
    }
}

