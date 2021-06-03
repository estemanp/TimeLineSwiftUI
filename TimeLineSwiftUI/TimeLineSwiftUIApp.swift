//
//  TimeLineSwiftUIApp.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 28/05/21.
//

import SwiftUI

@main
struct TimeLineSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            TimeLineRouter().showTimeLine()
        }
    }
}
