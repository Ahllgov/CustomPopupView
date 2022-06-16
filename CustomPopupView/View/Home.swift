//
//  Home.swift
//  CustomPopupView
//
//  Created by Магомед Ахильгов on 16.06.2022.
//

import SwiftUI

struct Home: View {
    
    @State var showPopup: Bool = false
    
    var body: some View {
        NavigationView {
            Button {
                withAnimation {
                    showPopup.toggle()
                }
            } label: {
                Text("Show Popup")
            }
            .navigationTitle("Custom Popup's")
        }
        .popupNaviationView(show: $showPopup) {
            List {
                ForEach(tasks) { task in
                    NavigationLink(task.taskTitle) {
                        Text(task.taskDescription)
                            .navigationTitle("Destination")
                    }
                }
            }
            .navigationTitle("Popup Navigation")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        withAnimation {
                            showPopup.toggle()
                        }
                    } label: {
                        Text("Close")
                    }
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
