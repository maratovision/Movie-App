//
//  MainTableViewCell.swift
//  E-Store
//
//  Created by Beksultan Maratov on 1/1/23.
//

import UIKit
import SnapKit
import Kingfisher

class MainTableViewCell: BaseCell{
    
    private lazy var movieImage: UIImageView = {
        let image = UIImageView()
        
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var movieName: UILabel = {
        let label = UILabel()
        
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .bold)
        
        return label
    }()
    
    override func addSubViews() {
        self.addSubview(movieImage)
        self.addSubview(movieName)
        setupConstrains()
    }
    
    func setupConstrains(){
        movieImage.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(300)
            $0.width.equalTo(400)
        }
        
        movieName.snp.makeConstraints{
            $0.top.equalTo(movieImage.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(16)
        }
    }
    
    func fill(model: MainCellModel){
            movieImage.kf.setImage(with: URL(string: model.urlImage))
            movieName.text = model.name
        }
}