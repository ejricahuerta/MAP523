//
//  StockService.swift
//  StockWatch
//
//  Created by Edmel John Ricahuerta on 2018-08-10.
//  Copyright © 2018 com.senecac.map. All rights reserved.
//

import UIKit

class StockService : RequestDataDelegate {

    
    
    
    private var dbManager = DataManager()
    private var requestData = RequestData()
    
    private var AllStocks = [JsonStock]()
    
    func listStocksfromDb() -> Array<Stock> {
        return dbManager.fetchAll() as! Array<Stock>
    }
    
    func listStocksfromJson(query : String) -> [JsonStock] {
        
        
        let stringUrl  = "\(host)\(query)&\(region)&\(language)&\(callback)"
        
        let url = URL(string : stringUrl)
        
        requestData.delegate = self
        
        requestData.getStock( url: url!)
        
    
        return AllStocks
        
        
    }
    
    func requestDataDidDownload(stocks: [JsonStock]) {
        AllStocks = stocks
    }
    
}
