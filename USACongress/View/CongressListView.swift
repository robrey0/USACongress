//
//  CongressListView.swift
//  Seller
//
//  Created by NEW on 8/5/22.
//

import SwiftUI

struct CongressListView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(viewModel.members) { member in
                        NavigationLink {
                            CongressDetailView(member: member)
                        } label: {
                            CongressRowView(member: member)
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                        
                        
                    }
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
        CongressListView()
    }
}
