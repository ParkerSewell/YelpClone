//
//  BusinessCell.swift
//  Yelp
//
//  Created by Parker Sewell on 2/9/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell{
    
    @IBOutlet weak var businessImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var reviewsLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var starsImage: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
 
    
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            businessImage.setImageWithURL(business.imageURL!)
            descriptionLabel.text = business.categories
            addressLabel.text = business.address
            reviewsLabel.text = "\(business.reviewCount!)Reviews"
            starsImage.setImageWithURL(business.ratingImageURL!)
            distanceLabel.text = business.distance
            
            //Round images becasue it wouldn't work in other places
            businessImage.layer.cornerRadius = 3.0
            businessImage.clipsToBounds = true
            nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        }
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        
    }
    
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
