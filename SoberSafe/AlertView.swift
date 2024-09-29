//
//  AlertView.swift
//  SoberSafe
//
//  Created by Vishnu Pillai on 9/29/24.
//

import SwiftUI

struct AlertView: View {
    @State private var contactName: String = ""
    @State private var contactNumber: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Emergency Contact")
                .font(.largeTitle)
                .padding()

            TextField("Contact Name", text: $contactName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing], 20)

            TextField("Contact Number", text: $contactNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing], 20)

            Button(action: {
                sendAlert()
            }) {
                Text("Send Alert")
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
    }

    func sendAlert() {
        let smsURL = "sms:\(contactNumber)&body=This%20is%20an%20emergency%20alert%20from%20SoberSafe!"
        if let url = URL(string: smsURL) {
            UIApplication.shared.open(url)
        }
    }
}

#Preview {
    AlertView()
}
