//
//  Panel.swift
//  TD
//
//  Created by Lamotte Cyril on 10/10/2022.
//

import SwiftUI

struct Panel: View {
  
    let panelTitle: String
    let panelIcon: String
    let panelText: String
  
    var body: some View {
      VStack(
        alignment: .leading,
        spacing: 24
      ) {
        HStack {
          Image(systemName: panelIcon)
            .foregroundColor(.accentColor)
          Text(panelTitle)
            .foregroundColor(.accentColor)
        }
        .font(.title)

        Text(panelText)
          .font(.custom("input", fixedSize: 18))
          .lineSpacing(5)
          .foregroundColor(Color(white: 0.4))
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(24)
      .background(Color("light-bg"))
      .cornerRadius(10)

    }

}

struct Panel_Previews: PreviewProvider {
  static var previews: some View {
    
    VStack() {
    
      Panel(panelTitle: "Titre du panneau", panelIcon: "star.fill", panelText: "Lorem ipsum dolor sit amet. Et dolor corrupti eum accusantium dolores eum ratione consequatur eos voluptas beatae sit accusamus culpa ut autem voluptas. Aut placeat itaque aut nemo Quis nam sunt nihil ut quam aliquam non quasi rerum qui impedit quasi.")
        .padding(20)
      
      Panel(panelTitle: "Analyse", panelIcon: "waveform.and.magnifyingglass", panelText: "Lorem ipsum dolor.")
        .padding(20)
      
    }
    .previewLayout(.sizeThatFits)
    
  }
}
