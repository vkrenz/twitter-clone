//
//  VerifiedSealView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-29.
//

import SwiftUI

struct VerifiedSealView: View {
    // TODO: Change based on User Model (default = false)
    var userIsVerified = true
    var color: Color = .blue
    
    var body: some View {
        if userIsVerified {
            Image(systemName: "checkmark.seal.fill")
                .foregroundColor(color)
        }
    }
}

#Preview {
    VerifiedSealView()
}
