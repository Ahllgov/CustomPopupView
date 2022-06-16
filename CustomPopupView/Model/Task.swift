//
//  Task.swift
//  CustomPopupView
//
//  Created by Магомед Ахильгов on 16.06.2022.
//

import Foundation

struct Task: Identifiable {
    var id = UUID().uuidString
    var taskTitle: String
    var taskDescription: String
}

var tasks: [Task] = [
    Task(taskTitle: "Meeting", taskDescription: "Planning the team's daily routine"),
    Task(taskTitle: "Icon set", taskDescription: "Editing icons for team task in the next week"),
    Task(taskTitle: "Prototype", taskDescription: "Make and send protoypes"),
    Task(taskTitle: "Check assets", taskDescription: "Start checking an assets"),
    Task(taskTitle: "Team party", taskDescription: "Having fun with teammates"),
    Task(taskTitle: "Meeting with clients", taskDescription: "Explaining project issues to the client"),
    
    Task(taskTitle: "Next Project", taskDescription: "Discussing next project with team"),
    Task(taskTitle: "App proposal", taskDescription: "Meet client for next App Proposal")
]
