//
//  SearchViewCell.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 11.10.2022.
//

import UIKit

class SearchViewCell: UICollectionViewCell {
    
    static let identifier = "SearchViewCell"
    
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 10
        return image
    }()
    
    private lazy var trackTitle: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .white
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with model: SearchGridModel) {
        imageView.image = UIImage(named: model.icon)
    }
    
    private func setupLayout() {
        imageView.frame = contentView.bounds
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayout()
    }
}
