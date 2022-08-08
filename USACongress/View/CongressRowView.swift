//
//  CongressRowView.swift
//  USACongress
//
//  Created by NEW on 8/8/22.
//

import SwiftUI

struct CongressRowView: View {
    
    let member: Member
    
    var body: some View {
        VStack {
            CongressImageView(conid: member.id)
            Text(member.first_name)
            Text(member.last_name)
        }
    }
}

//struct CongressRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CongressRowView()
//    }
//}
