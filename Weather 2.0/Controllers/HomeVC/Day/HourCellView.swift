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
                    .fixedSize()
                //.padding()
                Image(uiImage: R.Images.WeatherIcons.cloudy!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height:  30)
                //.padding()
                // .backgroundColor(.white)
                Text("45")
                    .fixedSize()
                
            }
        }
        .frame(width: 40, height: 80)
        .padding(8)
        .background(Color(R.Colors.separator))
        .cornerRadius(20)
        
    }
    
    
    struct Preview: PreviewProvider {
        static var previews: some View {
            HourWeatherCell()
                .previewLayout(.sizeThatFits)
        }
    }
}
