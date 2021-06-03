//
//  ContentView.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 28/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isFirstSection: Bool = true
    @State var isLastSection: Bool = true
    
    
    var body: some View {
        VStack(spacing: 2) {
            MatchTitleView(homeTeamName: "Team A",
                           awayTeamName: "Team B")
            Rectangle()
                .fill(TimeLineStyle.color.timeLine)
                .frame(width: (UIScreen.main.nativeBounds.width / 24), height: (UIScreen.main.nativeBounds.height / 24))
                .if(isFirstSection) { $0.cornerRadius(25, corners: [.topLeft, .topRight]) }
                
            Rectangle()
                .fill(TimeLineStyle.color.timeLine)
                .frame(width: (UIScreen.main.nativeBounds.width / 24), height: (UIScreen.main.nativeBounds.height / 24))
            Rectangle()
                .fill(TimeLineStyle.color.timeLine)
                .frame(width: (UIScreen.main.nativeBounds.width / 24), height: (UIScreen.main.nativeBounds.height / 24))
            Rectangle()
                .fill(TimeLineStyle.color.timeLine)
                .frame(width: (UIScreen.main.nativeBounds.width / 24), height: (UIScreen.main.nativeBounds.height / 24))
            Rectangle()
                .fill(TimeLineStyle.color.timeLine)
                .frame(width: (UIScreen.main.nativeBounds.width / 24), height: (UIScreen.main.nativeBounds.height / 24))
            Rectangle()
                .fill(TimeLineStyle.color.timeLine)
                .frame(width: (UIScreen.main.nativeBounds.width / 24), height: (UIScreen.main.nativeBounds.height / 24))
            Rectangle()
                .fill(TimeLineStyle.color.timeLine)
                .frame(width: (UIScreen.main.nativeBounds.width / 24), height: (UIScreen.main.nativeBounds.height / 24))
            Rectangle()
                .fill(TimeLineStyle.color.timeLine)
                .frame(width: (UIScreen.main.nativeBounds.width / 24), height: (UIScreen.main.nativeBounds.height / 24))
            Rectangle()
                .fill(TimeLineStyle.color.timeLine)
                .frame(width: (UIScreen.main.nativeBounds.width / 24), height: (UIScreen.main.nativeBounds.height / 24))
                .if(isLastSection) { $0.cornerRadius(25, corners: [.bottomLeft, .bottomRight]) }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
