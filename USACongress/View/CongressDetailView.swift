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
        VStack(spacing: 3) {
            CongressImageView(conid: member.id)
                .frame(width: 250, height:250)
            
            HStack(spacing: 5) {
                Text(member.first_name)
                Text(member.middle_name ?? "")
                Text(member.last_name)
            }
            
            Text(member.title)
            Text("Party: \(member.party)")
            Text(member.seniority)
            Text("Next election: \(member.next_election)")
            
            
                
        }
                .navigationTitle("\(member.first_name) \(member.last_name)")
                .navigationBarTitleDisplayMode(.inline)
        
    }
}

//struct CongressDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CongressDetailView()
//    }
//}
