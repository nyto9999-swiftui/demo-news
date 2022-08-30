import Foundation
import SwiftUI

struct NewsResponse: Codable {
  var results:[News]
  enum NewsCodingKeys: String, CodingKey {
    case results = "articles"
  }
}

struct News: Codable, Identifiable {
  var id = UUID()
  let title:String
  let author: String?
  let publishedAt: String
  let url:String
  let urlToImage: String?
  
  enum NewsDetail: CodingKey {
    case title
    case author
    case publishedAt
    case urlToImage
    case url
  }
}
