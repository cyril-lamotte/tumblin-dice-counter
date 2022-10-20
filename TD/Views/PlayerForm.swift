//
//  PlayerForm.swift
//  TD
//
//  Created by Lamotte Cyril on 14/10/2022.
//

import SwiftUI

struct PlayerForm: View {
  
  // presentationMode is used to close the sheet after submit.
  @Environment(\.presentationMode) var presentationMode
  @State private var name: String = ""
  @State private var color: Color = .red
  var onPlayerCreated: (Player) -> Void

  var body: some View {
    
    VStack(alignment: .leading, spacing: 24) {
      
      Spacer()
      
      HStack {
        Image(systemName: "person.fill.badge.plus")
        Text(name == "" ? "Nouveau joueur" : name)
      }.font(.largeTitle)
      
      VStack(alignment: .leading, spacing: 16) {
        Text("Nom")
          .font(.title2)
        
        TextField("Ex : Nora, Léo", text: $name)
          .textFieldStyle(Input())
      
      }
      
      VStack(alignment: .leading, spacing: 16) {
        Text("Couleur")
          .font(.title2)

        // Call the color selector with the passed function.
        ColorSelector { selectedColor in
          color = selectedColor;
        }
      }

      Button {
        let newPlayer = Player(name: name, color: color)
        onPlayerCreated(newPlayer)
        presentationMode.wrappedValue.dismiss()
      } label: {
        Label("Ajouter \(name)", systemImage: "person.fill.badge.plus")
      }
      .buttonStyle(ButtonPrimary())
      
    }
    .padding(24)
  }
}

struct PlayerForm_Previews: PreviewProvider {
  static var previews: some View {
    PlayerForm { _ in
      return
    }
  }
}
