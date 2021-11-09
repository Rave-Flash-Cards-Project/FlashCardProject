//
//  CardsViewController.swift
//  FlashCards
//
//  Created by Limei  Chen on 11/8/21.
//

import UIKit

class CardsViewController: UIViewController {
    
    var data = ["Headline1","Headline2","Headline3","Headline4","Headline6"]

    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        myCollectionView.backgroundColor = .systemYellow
        myCollectionView.register(FlashcardCell.self, forCellWithReuseIdentifier: "cell")
    }
    
}
extension CardsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("Olivia couting", data.count)
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? FlashcardCell else {
          fatalError("could not dequeue cell")
        }
        
        return cell
    }
    
}

extension CardsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

