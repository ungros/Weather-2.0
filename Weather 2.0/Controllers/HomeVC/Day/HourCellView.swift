//
//  HourCellView.swift
//  Weather 2.0
//
//  Created by Roman on 29.11.2022.
//


import Foundation
import SwiftUI

struct HourWeatherCell: View {
    
    var body: some View {
        HStack(alignment: .center) {
            VStack{
                
                Text("00")
                Image(uiImage: R.Images.WeatherIcons.cloudy!)
                Text("42C")
                .padding(10)
                
            }
            
        }
        .padding()
        .background(Color(R.Colors.cardColor))
        .cornerRadius(20)
        .fr
    }
}

struct Preview: PreviewProvider {
    static var previews: some View {
        HourWeatherCell()
            .previewLayout(.sizeThatFits)
    }
}
