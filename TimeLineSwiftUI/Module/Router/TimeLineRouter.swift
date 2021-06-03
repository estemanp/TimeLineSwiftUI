//
//  TimeLineRouter.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 28/05/21.
//

import Foundation
import SwiftUI

struct TimeLineRouter {
    
    func showEvent(event: Event) -> some View {
        EventView(event: event)
    }
    
    func showTimeLine() -> some View {
        TimeLineView(presenter: TimeLinePresenter(interactor: TimeLineInteractor()))
    }
}
