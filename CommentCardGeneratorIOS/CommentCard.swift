//
//  Text.swift
//  CommentCardGeneratorIOS
//
//  Created by Ropner, Kit (NA) on 15/03/2021.
//

import Foundation
class CommentCard: ObservableObject{
    @Published var name: String
    @Published var subject: String
    @Published var teacher: String
    @Published var enjoymentLevel: String
    @Published var progressLevel: String
    @Published var improvement: String
    
    init(){
        improvement = "neater handwriting"
        progressLevel = "good"
        enjoymentLevel = "happy"
        teacher = "Mr C"
        subject = "History"
        name = "Jeremy"
    }

    
    func generateCommentCard() -> String {
        return """
            Dear \(teacher),
            I am \(enjoymentLevel) with \(subject) and I feel my progress is \(progressLevel). An improvement I could make would be \(improvement).
            \(name)
            """
    }
    
}
