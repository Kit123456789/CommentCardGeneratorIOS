//
//  SwiftUIView.swift
//  CommentCardGeneratorIOS
//
//  Created by Ropner, Kit (NA) on 24/03/2021.
//

import SwiftUI


struct RootTabView: View {
    var body: some View {
        VStack{
            Text("Choose a menu option")
            TabView{
                CommentCardView()
                    .tabItem{
                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
                        Text("Preview Comment Card")
                    }
                DeadlineReminder()
                    .tabItem{
                        Image(systemName: "deskclock.fill")
                        Text("Preview Comment Card")
                    }
            }
        }
    }

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
}
