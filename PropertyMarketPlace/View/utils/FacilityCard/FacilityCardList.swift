//
//  FacilityCardList.swift
//  FindProperty
//
//  Created by Amit on 08/04/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct FacilityCardList: View {
    let facility: [Facility]!
    var chunkedFacility: [[ Facility ]] = []
    
    init(facility: [Facility]) {
        self.facility = facility
        self.chunkedFacility = self.facility.chunked(into: 2)
    }
    
    var body: some View {
        Group {
            ForEach(0..<self.chunkedFacility.count) { facilityIndex in
                Group {
                    FacilityCard(facilityDetail: self.chunkedFacility[facilityIndex])
                    Spacer()
                }
            }
        }
    }
}

struct FacilityCardList_Previews: PreviewProvider {
    static var previews: some View {
        FacilityCardList(facility: [Facility(iconName: "bathtub", name: "4 Baths")])
    }
}
