//
//  TimeLinePresenter.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 28/05/21.
//

import SwiftUI
import Combine

final class TimeLinePresenter: ObservableObject {
    
    private let interactor: TimeLineInteractor
    private let router = TimeLineRouter()
    private var cancellables = Set<AnyCancellable>()
    @Published var eventViewModels: [Event] = []
    @Published var teamsNamesViewModels: Dictionary<String, String> = Dictionary<String, String>()
    @Published var sectionViewModels: Dictionary<Int8, [Event]> = Dictionary<Int8, [Event]>()
    
    init(interactor: TimeLineInteractor) {
        self.interactor = interactor
        interactor.$eventViewModels
            .map { events in
                let result = events.filter{ $0.timeStamp >= 0 && $0.timeStamp <= 90 }
                let groups = Dictionary(grouping: result, by: { $0.timeStamp / 10 })
                return groups
            }
            .assign(to: \.sectionViewModels, on: self)
            .store(in: &cancellables)
        interactor.$teamsNamesViewModels
            .assign(to: \.teamsNamesViewModels, on: self)
            .store(in: &cancellables)
    }

    
    // MARK: Navigation
    func showEvent(event: Event) -> some View {
        router.showEvent(event: event)
    }
}
