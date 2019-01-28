import UIKit

class NewsDetailViewController: UIViewController {

    var imageUrl: String?
    var strTitle: String?
    var strSource: String?
    var strDescription: String?
    
    @IBOutlet weak var newsImage: UIImageView!
    
    @IBOutlet weak var newsTitle: UILabel!
    
    @IBOutlet weak var newsSource: UILabel!
    
    @IBOutlet weak var newsDescription: UILabel!
    
    override func viewDidLoad() {
        newsTitle.text = strTitle
        newsSource.text = strSource
        newsDescription.text = strDescription
        
        DispatchQueue.global().async {
            let urlImage = try? Data(contentsOf: URL(string: self.imageUrl!)!)
            if let imageData = urlImage {
                DispatchQueue.main.async {
                    self.newsImage.image = UIImage(data: imageData)
                }
            }
        }
    }
}
