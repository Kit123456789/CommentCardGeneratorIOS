//
//  ContentView.swift
//  CommentCardGeneratorIOS
//
//  Created by Ropner, Kit (NA) on 12/03/2021.
//

import SwiftUI

struct CommentCardView: View {
    @StateObject private var commentCard = CommentCard()
        
    var body: some View {
        VStack {
            Text(commentCard.generateCommentCard())
                .font(.callout)
                .fontWeight(.black)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
                .padding(.all)
                .toolbar{
                    EditButton()
                }
                ColorPicker("Colour picker", selection: .constant(.red))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentCardView()
    }
}
