//
//  FacilityDetail.swift
//  FindProperty
//
//  Created by Amit on 31/03/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct FacilityDetail: View {
    let facilitesDetail: [Facility]
    var chunkedFacilityDetail: [[Facility]] = []
    
    init(facilitesDetail: [Facility]) {
        self.facilitesDetail = facilitesDetail
        self.chunkedFacilityDetail = facilitesDetail.chunked(into: 4)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Apartement Fasilitas")
                .bold()
            
            Group {
                VStack(spacing: 20) {
                    ForEach(0..<self.chunkedFacilityDetail.count) { index in
                        HStack {
                            ForEach(0..<self.chunkedFacilityDetail[index].count) { innerIndex in
                                VStack {
                                    Image("\(self.chunkedFacilityDetail[index][innerIndex].iconName)")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        
                                    Text("\(self.chunkedFacilityDetail[index][innerIndex].name)")
                                        .font(.footnote)
                                        .foregroundColor(.grayTextColor)
                                }

                                if innerIndex < 3 {
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct FacilityDetail_Previews: PreviewProvider {
    static var previews: some View {
        FacilityDetail(facilitesDetail: [Facility(iconName: "bathtub", name: "4 Baths")])
    }
}
