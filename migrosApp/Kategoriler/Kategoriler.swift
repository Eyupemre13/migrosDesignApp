//
//  Kategoriler.swift
//  migrosApp
//
//  Created by Eyüp Emre Aygün on 23.08.2022.
//

import Foundation

class Kategoriler {
    var kategori_id : Int?
    var kategori_ad : String?
    var kategori_resim : String?
    var kategori_indirim : String?
    var kategori_fiyat : String?
    
    
    
    
    init(kategori_id: Int, kategori_ad: String, kategori_indirim: String,kategori_fiyat : String,kategori_resim : String?) {
        self.kategori_id  = kategori_id
        self.kategori_ad = kategori_ad
        self.kategori_indirim = kategori_indirim
        self.kategori_fiyat = kategori_fiyat
        self.kategori_resim = kategori_resim
    }
    

    
}
