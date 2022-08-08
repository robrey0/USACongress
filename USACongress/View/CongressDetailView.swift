//
//  CongressDetailView.swift
//  USACongress
//
//  Created by NEW on 8/8/22.
//

import SwiftUI

struct CongressDetailView: View {
    let member: Member
    
    var body: some View {
        Text(member.first_name)
            .font(.largeTitle)
            .navigationTitle("Detail View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

//struct CongressDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CongressDetailView()
//    }
//}
