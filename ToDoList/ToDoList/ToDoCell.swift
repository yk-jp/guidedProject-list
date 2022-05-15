//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Yusuke K on 2022-05-15.
//

import UIKit

protocol ToDoCellDelegate: AnyObject {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    weak var delegate: ToDoCellDelegate?
 
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var isCompleteButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
}
