//
//  SectionView.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 29/05/21.
//

import SwiftUI

struct SectionView: View {
    
    var key: Int8
    var events: [Event]
    private let firstElement: Int8 = 0
    private let lastElement: Int8 = 8
    private let scale: CGFloat = 12
    private let scaleCircle: CGFloat = 24
    private let radius: CGFloat = 24
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(TimeLineStyle.color.timeLine)
                .frame(width: (UIScreen.screenWidth / scale), height: (UIScreen.screenHeight / scale))
                .if(key == firstElement) { $0.cornerRadius(radius, corners: [.topLeft, .topRight]) }
                .if(key == lastElement) { $0.cornerRadius(radius, corners: [.bottomLeft, .bottomRight]) }
            HStack(alignment: .center, spacing: scaleCircle) {
                LazyVStack {
                    ForEach (events.filter( {$0.eventSide == .home } ), id: \.id) { event in
                        Circle()
                            .fill(TimeLineStyle.color.homeTeam)
                            .frame(width: (UIScreen.screenWidth / scaleCircle), height: (UIScreen.screenWidth / scaleCircle))
                    }
                }
                LazyVStack(alignment: .center) {
                    ForEach (events.filter( {$0.eventSide == .away } ), id: \.id) { event in
                        Circle()
                            .fill(TimeLineStyle.color.awayTeam)
                            .frame(width: (UIScreen.screenWidth / scaleCircle), height: (UIScreen.screenWidth / scaleCircle))
                            .alignmentGuide(.top, computeValue: { _ in CGFloat(event.timeStamp) })
                    }
                }
            }.frame(width: (UIScreen.screenWidth / scale) + scale, alignment: .center)
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(key: 0, events: [Event(eventSide: "home", timeStamp: 8),
                                     Event(eventSide: "away", timeStamp: 3)])
    }
}
