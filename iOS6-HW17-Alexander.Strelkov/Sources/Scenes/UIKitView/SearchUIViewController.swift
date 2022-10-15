//
//  SearchUIViewController.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 09.10.2022.
//

import Foundation
import UIKit

class SearchUIViewController: UIViewController {
    
    var music = Search().search
    
    private lazy var searchBarController: UISearchController = {
        let searchBar = UISearchController(searchResultsController: nil)
        searchBar.obscuresBackgroundDuringPresentation = false
        searchBar.searchBar.placeholder = "Ваша медиатека"
        return searchBar
    }()
    
    private lazy var collectionView: UICollectionView = {
        let collection = UICollectionView(frame: .zero,
                                          collectionViewLayout: setupLayout())
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.delegate = self
        collection.dataSource = self
        collection.register(SearchViewCell.self,
                            forCellWithReuseIdentifier: SearchViewCell.identifier)
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    private func setupView() {
        navigationItem.searchController = searchBarController
        navigationItem.title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.addSubview(collectionView)
    }
    
    private func setupLayout() -> UICollectionViewLayout {
        let spacing: CGFloat = 8
        
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.5),
            heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: spacing,
                                   leading: spacing,
                                   bottom: spacing,
                                   trailing: spacing)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .fractionalWidth(0.5))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                       subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = .init(top: 0,
                                      leading: 8,
                                      bottom: 90,
                                      trailing: 8)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
}

extension SearchUIViewController: UICollectionViewDelegate, UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return music.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchViewCell.identifier,
                                                            for: indexPath) as? SearchViewCell else { return UICollectionViewCell() }
        cell.configure(with: music[indexPath.row])
        return cell
    }
}

