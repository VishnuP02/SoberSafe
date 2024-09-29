//
//  ContentView.swift
//  SoberSafe
//
//  Created by Vishnu Pillai on 9/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Wrap your VStack in a NavigationView
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to SoberSafe")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Text("Choose an option to get started:")
                    .font(.subheadline)
                    .padding(.bottom, 20)

                // Button for BAC Calculator
                NavigationLink(destination: BACCalculatorView()) {
                    Text("BAC Calculator")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding([.leading, .trailing], 20)
                }

                // Button for Ride Options
                NavigationLink(destination: RideOptionsView()) {
                    Text("Find a Ride")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding([.leading, .trailing], 20)
                }

                // Button for Friend Alert
                NavigationLink(destination: AlertView()) {
                    Text("Emergency Contact")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding([.leading, .trailing], 20)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("SoberSafe") // Add a title to the navigation bar
        }
    }
}

#Preview {
    ContentView()
}
