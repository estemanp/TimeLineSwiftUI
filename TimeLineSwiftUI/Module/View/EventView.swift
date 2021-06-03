//
//  EventView.swift
//  TimeLineSwiftUI
//
//  Created by Andres Esteban Perez Ramirez on 28/05/21.
//

import SwiftUI

struct EventView: View {
    
    var event: Event
    @State private var showingAlert = true
    
    var body: some View {
        Text("")
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("An Event Ocurred"), message: Text("Min: \(event.timeStamp)"), dismissButton: .default(Text("Got it!")))
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: Event(eventSide: "home", timeStamp: 8))
    }
}
