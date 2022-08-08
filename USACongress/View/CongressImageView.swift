//
//  CongressImageView.swift
//  Seller
//
//  Created by NEW on 8/7/22.
//

import SwiftUI

// https://theunitedstates.io/images/congress/[size]/[bioguide].jpg

struct CongressImageView: View {
    let conid: String
    
    var body: some View {
        AsyncImage(url: URL(string: "https://theunitedstates.io/images/congress/original/\(conid).jpg")) { image in
            image
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        } placeholder: {
            ProgressView()
                .frame(width: 44, height: 44, alignment: .center)
        }

    }
}

//struct CongressImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        CongressImageView()
//    }
//}
