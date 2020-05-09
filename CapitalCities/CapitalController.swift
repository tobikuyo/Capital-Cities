//
//  CapitalController.swift
//  CapitalCities
//
//  Created by Tobi Kuyoro on 09/05/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import Foundation
import MapKit

class CapitalController {

    let london = Capital(title: "London",
                         info: "Home to the 2012 Summer Olympics",
                         coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275))

    let oslo = Capital(title: "Oslo",
                       info: "It was founded over a thousand years ago",
                       coordinate: CLLocationCoordinate2D(latitude: 59.95, longitude: 10.75))

    let paris = Capital(title: "Paris",
                        info: "Often calld City of Light",
                        coordinate: CLLocationCoordinate2D(latitude: 47.8567, longitude: 2.3508))

    let rome = Capital(title: "Rome",
                       info: "Has a whole country inside it",
                       coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5))

    let washington = Capital(title: "Washington DC",
                             info: "Named after George himself",
                             coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667))
}
