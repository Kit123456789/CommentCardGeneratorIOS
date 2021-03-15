//
//  ContentView.swift
//  CommentCardGeneratorIOS
//
//  Created by Ropner, Kit (NA) on 12/03/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var commentCard = CommentCard()
    var body: some View {
        Text(commentCard.generateCommentCard())
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
