//
//  TimeLineInteractor.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 28/05/21.
//

import Foundation
import Combine

final class TimeLineInteractor {
    
    @Published var eventViewModels: [Event] = []
    @Published var teamsNamesViewModels: Dictionary<String, String> = Dictionary<String, String>()
    
    init() {
        teamsNamesViewModels = ["Home": "Team A",
                                "Away": "Team B"]
        setupEvents()
    }
    
    private func setupEvents() {
        let timeLineEvents: Array<Event> = [
            Event(eventSide: "home", timeStamp: 10),
            Event(eventSide: "home", timeStamp: 8),
            Event(eventSide: "away", timeStamp: 7),
            Event(eventSide: "home", timeStamp: 11),
            Event(eventSide: "home", timeStamp: 24),
            Event(eventSide: "away", timeStamp: 36),
            Event(eventSide: "away", timeStamp: 44),
            Event(eventSide: "away", timeStamp: 56),
            Event(eventSide: "home", timeStamp: 51),
            Event(eventSide: "away", timeStamp: 66),
            Event(eventSide: "away", timeStamp: 69),
            Event(eventSide: "home", timeStamp: 57),
            Event(eventSide: "home", timeStamp: 59),
            Event(eventSide: "home", timeStamp: 71),
            Event(eventSide: "home", timeStamp: 85),
            Event(eventSide: "away", timeStamp: 89)
        ]
        eventViewModels = timeLineEvents
    }
}
