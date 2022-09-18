//
//  Senate.swift
//  Seller
//
//  Created by NEW on 8/5/22.


import Foundation

// MARK: - Query
struct CongressApiQuery: Decodable {
    let status, copyright: String
    let results: [Result]
}

// MARK: - Result
struct Result: Decodable {
    let congress, chamber: String
    let members: [Member]


}

// MARK: - Member
struct Member: Decodable, Identifiable {
    let id: String
    let title: String
    let short_title: String
    let first_name: String
    let middle_name: String?
    let last_name: String
    let suffix: String?
    let date_of_birth: String
    let gender: String
    let party: String
    let in_office: Bool
    let seniority, next_election: String

    let office, phone, fax: String?

}
