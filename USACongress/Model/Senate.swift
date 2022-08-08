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





























//import Foundation
//// MARK: - Query
//struct Query: Codable {
//    let status, copyright: String
//    let results: [Result]
//}
//
//// MARK: - Result
//struct Result: Codable {
//    let congress, chamber: String
//    //let numResults, offset: Int
//    let members: [Member]
//
////    enum CodingKeys: String, CodingKey {
////        case congress, chamber
////        case numResults
////        case offset, members
////    }
//}
//
//// MARK: - Member
//struct Member: Codable, Identifiable {
//    let id: String
//    //let title: Title
//    //let shortTitle: ShortTitle
//    //let apiURI: String?
//    var firstName: String?
//    let middleName: String?
//    let lastName: String?
//    let suffix: String?
//    let dateOfBirth: String?
//    //let gender: Gender
//    //let party: Party
////    let leadershipRole, twitterAccount, facebookAccount, youtubeAccount: String?
////    let govtrackID: String?
////    let cspanID, votesmartID, icpsrID: String?
////    let crpID, googleEntityID, fecCandidateID: String?
////    let url: String?
////    let rssURL: String?
////    let contactForm: String?
////    let inOffice: Bool
//    //let cookPvi: JSONNull?
//   // let dwNominate: Double?
//    //let idealPoint: JSONNull?
//   // let seniority, nextElection: String
//   // let totalVotes, missedVotes, totalPresent: Int
//    //let lastUpdated, ocdID: String
//    //let office, phone, fax: String?
//   // let state, senateClass: String
//    //let stateRank: StateRank
//    //let lisID: String
//    //let missedVotesPct, votesWithPartyPct, votesAgainstPartyPct: Double
//
////    enum CodingKeys: String, CodingKey {
////        case id, title
////        case shortTitle
////        case apiURI
////        case firstName
////        case middleName
////        case lastName
////        case suffix
////        case dateOfBirth
////        case gender, party
////        case leadershipRole
////        case twitterAccount
////        case facebookAccount
////        case youtubeAccount
////        case govtrackID
////        case cspanID
////        case votesmartID
////        case icpsrID
////        case crpID
////        case googleEntityID
////        case fecCandidateID
////        case url
////        case rssURL
////        case contactForm
////        case inOffice
////        case cookPvi
////        case dwNominate
////        case idealPoint
////        case seniority
////        case nextElection
////        case totalVotes
////        case missedVotes
////        case totalPresent
////        case lastUpdated
////        case ocdID
////        case office, phone, fax, state
////        case senateClass
////        case stateRank
////        case lisID
////        case missedVotesPct
////        case votesWithPartyPct
////        case votesAgainstPartyPct
////    }
//}
////
////enum Gender: String, Codable {
////    case f = "F"
////    case m = "M"
////}
////
////enum Party: String, Codable {
////    case d = "D"
////    case id = "ID"
////    case r = "R"
////}
////
////enum ShortTitle: String, Codable {
////    case sen = "Sen."
////}
////
////enum StateRank: String, Codable {
////    case empty = ""
////    case junior = "junior"
////    case senior = "senior"
////}
////
////enum Title: String, Codable {
////    case senator1StClass = "Senator, 1st Class"
////    case senator2NdClass = "Senator, 2nd Class"
////    case senator3RDClass = "Senator, 3rd Class"
////}
//
//// MARK: - Encode/decode helpers
////
////class JSONNull: Codable, Hashable {
////
////    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
////        return true
////    }
////
////    public var hashValue: Int {
////        return 0
////    }
////
////    public init() {}
////
////    public required init(from decoder: Decoder) throws {
////        let container = try decoder.singleValueContainer()
////        if !container.decodeNil() {
////            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
////        }
////    }
////
////    public func encode(to encoder: Encoder) throws {
////        var container = encoder.singleValueContainer()
////        try container.encodeNil()
////    }
////}
