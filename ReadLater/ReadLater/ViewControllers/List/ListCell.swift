//
//  ListCell.swift
//  ReadLater
//
//  Created by Xavi Moll on 25/12/2017.
//  Copyright © 2017 xmollv. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell, NibLoadableView {

    //MARK:- IBOutlets
    @IBOutlet private var favoriteView: UIView!
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var urlLabel: UILabel!
    
    //MARK:- Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        self.clearCell()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.clearCell()
    }
    
    private func clearCell() {
        self.favoriteView.backgroundColor = .white
        self.titleLabel.text = nil
        self.urlLabel.text = nil
    }
    
    //MARK:- Public methods
    func configure(with article: Article) {
        if article.isFavorite {
            self.favoriteView.backgroundColor = .black
        }
        self.titleLabel.text = article.title
        self.urlLabel.text = article.url.host
    }
    
}
