//
//  HomeView.swift
//  Seller
//
//  Created by NEW on 8/5/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(viewModel.members) { member in
                    VStack {
                        CongressImageView(conid: member.id)
                        Text(member.first_name)
                        Text(member.last_name)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                }
            }
            .navigationTitle("Senators")
        }
            .onAppear {
                viewModel.fetch()
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
