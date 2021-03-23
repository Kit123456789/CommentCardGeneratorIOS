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
            if Button() {
                ColorPicker("Colour picker", selection: .constant(.red))
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
