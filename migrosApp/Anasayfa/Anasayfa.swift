//
//  ViewController.swift
//  migrosApp
//
//  Created by Eyüp Emre Aygün on 19.08.2022.
//

import UIKit

class Anasayfa: UIViewController {
    @IBOutlet weak var anaResim: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
   
    var urunlerListesi = [Urunler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        self.navigationItem.title = "Migros"
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!, .font:UIFont(name: "Cairo-ExtraBold", size: 35)!]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        let u1 = Urunler(urun_id: 1, urun_resim_adi: "1", urun_lbl: "Meyve & Sebze")
        let u2 = Urunler(urun_id: 2, urun_resim_adi: "2", urun_lbl: "Et, Tavuk, Balık")
        let u3 = Urunler(urun_id: 3, urun_resim_adi: "3", urun_lbl: "Süt, Kahvaltılık")
        let u4 = Urunler(urun_id: 4, urun_resim_adi: "4", urun_lbl: "Temel Gıda")
        let u5 = Urunler(urun_id: 5, urun_resim_adi: "5", urun_lbl: "Hazır Yemek")
        let u6 = Urunler(urun_id: 6, urun_resim_adi: "6", urun_lbl: "Fırın,Pastane")
        let u7 = Urunler(urun_id: 7, urun_resim_adi: "7", urun_lbl: "Dondurma")
        let u8 = Urunler(urun_id: 8, urun_resim_adi: "8", urun_lbl: "Atıştırmalık")
        let u9 = Urunler(urun_id: 9, urun_resim_adi: "9", urun_lbl: "İçecekler")
        let u10 = Urunler(urun_id: 10, urun_resim_adi: "10", urun_lbl: "Temizlik")
        let u11 = Urunler(urun_id: 11, urun_resim_adi: "11", urun_lbl: "Kozmetik")
        let u12 = Urunler(urun_id: 12, urun_resim_adi: "12", urun_lbl: "Bebek")
        let u13 = Urunler(urun_id: 13, urun_resim_adi: "13", urun_lbl: "Ev, Yaşam")
        let u14 = Urunler(urun_id: 14, urun_resim_adi: "14", urun_lbl: "Kırtasiye")
        let u15 = Urunler(urun_id: 15, urun_resim_adi: "15", urun_lbl: "Çiçek")
        let u16 = Urunler(urun_id: 16, urun_resim_adi: "16", urun_lbl: "Pet Shop")
        let u17 = Urunler(urun_id: 17, urun_resim_adi: "17", urun_lbl: "Elektronik")
        
        urunlerListesi.append(u1)
        urunlerListesi.append(u2)
        urunlerListesi.append(u3)
        urunlerListesi.append(u4)
        urunlerListesi.append(u5)
        urunlerListesi.append(u6)
        urunlerListesi.append(u7)
        urunlerListesi.append(u8)
        urunlerListesi.append(u9)
        urunlerListesi.append(u10)
        urunlerListesi.append(u11)
        urunlerListesi.append(u12)
        urunlerListesi.append(u13)
        urunlerListesi.append(u14)
        urunlerListesi.append(u15)
        urunlerListesi.append(u16)
        urunlerListesi.append(u17)

        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 5
        tasarim.minimumLineSpacing = 5
        let genislik = collectionView.frame.size.width
        let hucreGenislik = (genislik - 30) / 3
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik )
        collectionView.collectionViewLayout = tasarim
            
    }
}
extension Anasayfa: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urunlerListesi.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let urun = urunlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "urunHucre", for: indexPath) as!
        CollectionViewCell
        
        cell.urunResimAdi.image =  UIImage(named: urun.urun_resim_adi!)
        cell.urunLabel.text = urun.urun_lbl
        
        cell.layer.cornerRadius = 10.0
        cell.layer.borderWidth = 0.3
        cell.layer.borderColor = UIColor.darkGray.cgColor
        cell.urunResimAdi.layer.cornerRadius = 10.0
        
        return cell
    }
}
