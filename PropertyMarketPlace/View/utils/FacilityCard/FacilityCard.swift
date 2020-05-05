//
//  FacilityCard.swift
//  FindProperty
//
//  Created by Amit on 08/04/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct FacilityCard: View {
    let facilityDetail: [Facility]

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(0..<self.facilityDetail.count) { facilityIndex in
                HStack {
                    Image("\(self.facilityDetail[facilityIndex].iconName)")
                        .resizable()
                        .frame(width: 15, height: 15)

                    Text("\(self.facilityDetail[facilityIndex].name)")
                        .font(.caption)
                        .foregroundColor(.grayTextColor)
                }
            }
        }
    }
}

struct FacilityCard_Previews: PreviewProvider {
    static var previews: some View {
        FacilityCard(facilityDetail: [Facility(iconName: "bathtub", name: "4 Baths")])
    }
}
