//
//  VerifiedSealView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-29.
//

import SwiftUI

struct VerifiedSealView: View {
    // TODO: Change based on User Model
    private var userIsVerified = true
    
    var body: some View {
        Image(systemName: "checkmark.seal.fill")
            .foregroundColor(.blue)
    }
}

#Preview {
    VerifiedSealView()
}
