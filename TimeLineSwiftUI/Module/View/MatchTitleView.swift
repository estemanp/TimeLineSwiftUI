//
//  MatchTitleView.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 28/05/21.
//

import SwiftUI

struct MatchTitleView: View {
    
    var homeTeamName: String
    var awayTeamName: String
    
    var body: some View {
        HStack {
            Circle()
                .fill(TimeLineStyle.color.homeTeam)
                .frame(width: 24, height: 24)
            Text(homeTeamName)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)
                .foregroundColor(TimeLineStyle.color.homeTeam)
                .font(.custom("SansSerifBldFLF", size: 17))
            Text(awayTeamName)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .lineLimit(1)
                .foregroundColor(TimeLineStyle.color.awayTeam)
                .font(.custom("SansSerifBldFLF", size: 17))
            Circle()
                .fill(TimeLineStyle.color.awayTeam)
                .frame(width: 24, height: 24)
        }.padding(10)
    }
}

struct MatchTitleView_Previews: PreviewProvider {
    static var previews: some View {
        MatchTitleView(homeTeamName: "Team A", awayTeamName: "Team B")
    }
}
