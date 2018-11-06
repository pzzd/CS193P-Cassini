//
//  DemoURLs.swift
//  Cassini
//
//  Created by Rose Pezzuti Dyer on 11/6/18.
//  Copyright © 2018 Rose Pezzuti Dyer. All rights reserved.
//

import Foundation

struct DemoURLs
{
    static let stanford = Bundle.main.url(forResource:"stanford", withExtension: "jpeg")
    
    static var NASA: Dictionary<String,URL> = {
        let NasaUrlStrings = [
            "Cassini": "https://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
            "Earth": "https://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
            "Saturn": "https://www.nasa.gov/sites/default/files/saturn_collage.jpg"
        ]
        var urls = Dictionary<String,URL>()
        for (key, value) in NasaUrlStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
