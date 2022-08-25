//
//  KategorilerCollectionViewCell.swift
//  migrosApp
//
//  Created by Eyüp Emre Aygün on 24.08.2022.
//

import UIKit

class KategorilerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var kategoriResim: UIImageView!
    
    @IBOutlet weak var kategorilerHucre: KategorilerCollectionViewCell!
    @IBOutlet weak var kategoriAd: UILabel!
    
    @IBOutlet weak var kategoriIndirim: UILabel!
    @IBOutlet weak var kategoriFiyat: UILabel!
}
