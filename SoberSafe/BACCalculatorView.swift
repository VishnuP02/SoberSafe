//
//  BACCalculatorView.swift
//  SoberSafe
//
//  Created by Vishnu Pillai on 9/29/24.
//

import SwiftUI

struct BACCalculatorView: View {
    @State private var weight: String = ""
    @State private var gender: String = ""
    @State private var drinks: String = ""
    @State private var bacResult: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("BAC Calculator")
                .font(.largeTitle)
                .padding()

            // Input fields for weight, gender, and drinks
            TextField("Enter your weight (in lbs)", text: $weight)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing], 20)

            TextField("Enter your gender (M/F)", text: $gender)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing], 20)

            TextField("Number of drinks", text: $drinks)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing], 20)

            // Calculate Button
            Button(action: {
                calculateBAC()
            }) {
                Text("Calculate BAC")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding([.leading, .trailing], 20)
            }

            // Display BAC Result
            if !bacResult.isEmpty {
                Text("Your BAC is: \(bacResult)")
                    .font(.title)
                    .padding()
            }

            Spacer()
        }
        .padding()
    }

    func calculateBAC() {
        // Simple BAC calculation logic for demonstration
        guard let weightInLbs = Double(weight), let numDrinks = Double(drinks) else {
            bacResult = "Invalid input"
            return
        }
        
        let r = (gender.uppercased() == "M") ? 0.68 : 0.55
        let alcoholConsumed = numDrinks * 14.0 // Approx grams of alcohol per drink
        let bac = (alcoholConsumed / (weightInLbs * 454 * r)) * 100

        bacResult = String(format: "%.3f", bac)
    }
}

#Preview {
    BACCalculatorView()
}
