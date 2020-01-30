//
//  IMAGE-DOWNLOADER.swift
//  CleanerApp
//
//  Created by Ahmed Ayad on 8/6/19.
//  Copyright © 2019 ahmed ayad. All rights reserved.
//

import Foundation
import UIKit
let imagecahe = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    
    
    func downloadimages(from url:String){
        self.image = nil
        
        if let cachedimage = imagecahe.object(forKey: url as AnyObject) as? UIImage {
            self.image=cachedimage
            
            return
        }else
        {
            self.image = UIImage(named: "profile")
        }
        
        
        let urlrequset = URLRequest(url: URL(string: "https://cleaner-task.herokuapp.com/")!)
        let task =  URLSession.shared.dataTask(with: urlrequset) { [weak self] (data, response, error) in
            if error != nil {
                print("there is an error \(String(describing: error))")
                return
            }
            DispatchQueue.main.async {
                if let downloadedimage = UIImage(data: data!){
                    imagecahe.setObject(downloadedimage, forKey: urlrequset as AnyObject )
                    self!.image=downloadedimage
                }
                
                
            }
        }
        task.resume()
        
        
        
    }
    
    
}
