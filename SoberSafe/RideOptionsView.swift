//
//  RideOptionsView.swift
//  SoberSafe
//
//  Created by Vishnu Pillai on 9/29/24.
//

import SwiftUI

struct RideOptionsView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Find a Ride")
                .font(.largeTitle)
                .padding()

            // Button to open Uber
            Button(action: {
                print("Uber button clicked")
                openUber()
            }) {
                Text("Find a Ride with Uber")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding([.leading, .trailing], 20)
            }

            // Button to open Lyft
            Button(action: {
                print("Lyft button clicked")
                openLyft()
            }) {
                Text("Find a Ride with Lyft")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding([.leading, .trailing], 20)
            }

            Spacer()
        }
        .padding()
    }
    
    // Function to open Uber
    func openUber() {
        print("Attempting to open Uber...")
        let uberURLScheme = URL(string: "uber://")!
        let uberAppStoreURL = URL(string: "https://apps.apple.com/app/uber/id368677368")!
        
        if UIApplication.shared.canOpenURL(uberURLScheme) {
            UIApplication.shared.open(uberURLScheme, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.open(uberAppStoreURL, options: [:], completionHandler: nil)
        }
    }

    // Function to open Lyft
    func openLyft() {
        print("Attempting to open Lyft...")
        let lyftURLScheme = URL(string: "lyft://")!
        let lyftAppStoreURL = URL(string: "https://apps.apple.com/app/lyft/id529379082")!
        
        if UIApplication.shared.canOpenURL(lyftURLScheme) {
            UIApplication.shared.open(lyftURLScheme, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.open(lyftAppStoreURL, options: [:], completionHandler: nil)
        }
    }
}

#Preview {
    RideOptionsView()
}
