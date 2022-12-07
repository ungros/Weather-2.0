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
        VStack(alignment: .center) {
            
            VStack{
                Text("5")
                    .font(.body)
                //.padding()
                Image(uiImage: R.Images.WeatherIcons.cloudy!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 55, height:  100)
                    .padding()
                   // .backgroundColor(.white)
                Text("45")
                
                
            }
        }
            .padding(30)
            .background(Color(R.Colors.cardColor))
            .cornerRadius(20)
            .frame(width: 30, height: 20)
    }
    
    
    struct Preview: PreviewProvider {
        static var previews: some View {
            HourWeatherCell()
                .previewLayout(.sizeThatFits)
        }
    }
}
