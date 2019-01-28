import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var background: UIView!
    
    @IBOutlet weak var preview: UIImageView!
    
    @IBOutlet weak var titlePreview: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
