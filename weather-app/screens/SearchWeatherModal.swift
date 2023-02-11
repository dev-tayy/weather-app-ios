//
//  SearchWeatherScreen.swift
//  weather-app
//
//  Created by Yusuf Ahmed on 07/02/2023.
//

import SwiftUI

struct SearchWeatherModal: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button("Press to dismiss") {
                    dismiss()
                }
                .font(.title)
                .padding()
                .background(.black)
    }
}

struct SearchWeatherModal_Previews: PreviewProvider {
    static var previews: some View {
        SearchWeatherModal()
    }
}
