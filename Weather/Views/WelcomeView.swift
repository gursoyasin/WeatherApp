//
//  WelcomeView.swift
//  Weather
//
//  Created by Yasin Gürsoy on 8.08.2023.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    
    
    var body: some View {
        VStack{
            VStack(spacing: 20) {
                
                Text("Hava Durumu Şuan ")
                    .bold().font(.title)
                
                
                Text("Bölgenizdeki hava durumunu öğrenmek için lütfen mevcut konumunuzu paylaşın")
                    .padding()
                
            }
            .multilineTextAlignment(.center)
            .padding()
            
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
            
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
