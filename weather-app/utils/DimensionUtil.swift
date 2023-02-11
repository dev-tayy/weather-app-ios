//
//  DimensionUtil.swift
//  weather-app
//
//  Created by Yusuf Ahmed on 11/02/2023.
//

import Foundation
import SwiftUI


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

