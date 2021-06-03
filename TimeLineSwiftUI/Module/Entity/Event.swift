//
//  Event.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 28/05/21.
//

import Foundation

enum TeamSide: String {
    case home
    case away
}

struct Event {
    let id = UUID()
    let eventSide: TeamSide
    let timeStamp: Int8
    
    init(eventSide: String, timeStamp: Int8) {
        self.eventSide = TeamSide(rawValue: eventSide.lowercased()) ?? .home
        self.timeStamp = timeStamp
    }
}
