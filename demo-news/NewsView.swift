import SwiftUI

struct NewsView: View {
  
  @ObservedObject var news = NewsClient()
    var body: some View {
        VStack {
          Text(news.newsUrl)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
