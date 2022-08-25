//
//  KategorilerViewController.swift
//  migrosApp
//
//  Created by Eyüp Emre Aygün on 20.08.2022.
//

import UIKit

class KategorilerViewController: UIViewController {
    

    @IBOutlet weak var KategorilerCollectionView: UICollectionView!
    
    
    var kategorilerListe = [Kategoriler]()


    override func viewDidLoad() {
        super.viewDidLoad()
       
        

            
            KategorilerCollectionView.delegate = self
            KategorilerCollectionView.dataSource = self
            
            self.navigationItem.title = "Migros"
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = UIColor(named: "anaRenk")
            appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!, .font:UIFont(name: "Cairo-ExtraBold", size: 35)!]
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.compactAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
            
        
            let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Soğan Kuru Kg", kategori_indirim: "Sepette % 25 indirim", kategori_fiyat: "8,90 TL", kategori_resim: "sogan")
            
            let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Domates Kg", kategori_indirim: "Sepette % 25 indirim", kategori_fiyat: "9,90 TL", kategori_resim: "domates")
        
            let k3 = Kategoriler(kategori_id: 2, kategori_ad: "Havuç Kg", kategori_indirim: "Sepette % 25 indirim", kategori_fiyat: "12,90 TL", kategori_resim: "domates")
           
            let k4 = Kategoriler(kategori_id: 2, kategori_ad: "Maydanoz Adet", kategori_indirim: "Sepette % 25 indirim", kategori_fiyat: "4,45 TL", kategori_resim: "maydanoz")
        
            let k5 = Kategoriler(kategori_id: 2, kategori_ad: "Hindistan Cevizi", kategori_indirim: "Sepette % 25 indirim", kategori_fiyat: "17,90 TL", kategori_resim: "hindistanCevizi")
 
            let k6 = Kategoriler(kategori_id: 2, kategori_ad: "Muz Kg", kategori_indirim: "Sepette % 25 indirim", kategori_fiyat: "35,50 TL", kategori_resim: "muz")
        
             let k7 = Kategoriler(kategori_id: 2, kategori_ad: "Ananas Adet", kategori_indirim: "Sepette % 25 indirim", kategori_fiyat: "29,90 TL", kategori_resim: "ananas")
        
            kategorilerListe.append(k1)
            kategorilerListe.append(k2)
            kategorilerListe.append(k3)
            kategorilerListe.append(k4)
            kategorilerListe.append(k5)
            kategorilerListe.append(k6)
            kategorilerListe.append(k7)


            
            let tasarim = UICollectionViewFlowLayout()
            tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
            tasarim.minimumInteritemSpacing = 5
            tasarim.minimumLineSpacing = 5
            let genislik = KategorilerCollectionView.frame.size.width
            let hucreGenislik = (genislik - 30) / 2
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik * 1.5 )
            KategorilerCollectionView.collectionViewLayout = tasarim
                
        }
    }
    

extension KategorilerViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kategorilerListe.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let kategori = kategorilerListe[indexPath.row]
        let cell = KategorilerCollectionView.dequeueReusableCell(withReuseIdentifier: "kategorilerHucre", for: indexPath) as!
        KategorilerCollectionViewCell
        cell.kategoriFiyat.text = kategori.kategori_fiyat!
        cell.kategoriIndirim.text = kategori.kategori_indirim!
        cell.kategoriAd.text = kategori.kategori_ad
        cell.kategoriResim.image = UIImage(named: kategori.kategori_resim!)
        
        cell.layer.cornerRadius = 10.0
        cell.layer.borderWidth = 0.3
        cell.layer.borderColor = UIColor.darkGray.cgColor
        cell.kategoriResim.layer.cornerRadius = 10.0
        
        return cell
    }
        
}

        
    
   

        

    
    
    

    




