//
//  ViewModel.swift
//  Seller
//
//  Created by NEW on 8/5/22.
//

import Foundation



class ViewModel: ObservableObject {
    
    @Published var members = [Member]()
    
    func fetch() {
        
        let apistring = "https://api.propublica.org/congress/v1/117/senate/members.json"
        let apiKey = "BIgFSCFVDr8HcANr4wzYR8xVmLXCWYAj3crinkBU"
        let fields = ["X-API-Key": apiKey]

        let url = URL(string: apistring)!
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = fields

        URLSession.shared.dataTask(with: request) { data, res, err in
            let jsondecoder = JSONDecoder()
            if let err = err {
                print(err)
            }
            if let data = data {
                do {
                    let query = try jsondecoder.decode(CongressApiQuery.self, from: data)
                    
                    DispatchQueue.main.async {
                        for senate in query.results {
                            self.members = senate.members
                        }
                    }
                } catch {
                    print("Failed to decode json: \(error)")
                }
                
            }
        }.resume()
    }
}
