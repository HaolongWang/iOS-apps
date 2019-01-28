import Foundation

class News {
    let priority: Int   //high to low: 1 - 9
    let title: String
    let description: String
    var source: String?
    var imageUrl: String?
    
    init(priority: Int = 9, title: String, description: String, source: String? = nil, imageUrl: String? = nil) {
        self.priority = priority
        self.title = title
        self.description = description
        self.source = source
        self.imageUrl = imageUrl
    }
}
