import Foundation
import Combine



class NewsClient: ObservableObject {
  @Published var newsUrl:String = ""
  init() {
    let type = NewsType.headline(country: "tw")
    switch type {
      case .headline(country: let country):
        self.newsUrl = "https://newsapi.org/v2/top-headlines?pagesize=100&country=\(country)&apiKey=402d3a3e2bb44751b9d8b9618c6a6fca"
      
    }
  }
}

enum NewsType {
  case headline(country: String)
}
