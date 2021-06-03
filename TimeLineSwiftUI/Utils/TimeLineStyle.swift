//
//  TimeLineStyle.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 29/05/21.
//

import SwiftUI

final class TimeLineStyle {

    // MARK: - Color palette
    public static let color: TimeLineColorPaletteProtocol = TimeLineColorPalette()
}

protocol TimeLineColorPaletteProtocol {
    var timeLine: Color { get }
    var homeTeam: Color { get }
    var awayTeam: Color { get }
}

final class TimeLineColorPalette: TimeLineColorPaletteProtocol {
    var timeLine: Color = Color("timeLine")
    var homeTeam: Color = Color("homeTeam")
    var awayTeam: Color = Color("awayTeam")
}
