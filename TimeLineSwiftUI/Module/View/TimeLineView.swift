//
//  TimeLineView.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 28/05/21.
//

import SwiftUI

struct TimeLineView: View {
    @StateObject var presenter: TimeLinePresenter
    
    var body: some View {
        VStack {
            MatchTitleView(homeTeamName: presenter.teamsNamesViewModels["Home"] ?? "Home",
                           awayTeamName: presenter.teamsNamesViewModels["Away"] ?? "Away")
            LazyVStack(spacing: 1) {
                ForEach(0 ..< 9) { key in
                    SectionView(key: Int8(key), events: presenter.sectionViewModels[Int8(key)] ?? [])
                }
            }
        }
    }
}
