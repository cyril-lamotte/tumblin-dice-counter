//
//  ColorSelector.swift
//  TD
//
//  Created by Lamotte Cyril on 16/10/2022.
//

import SwiftUI

struct ColorSelector: View {
    
  @State var selectedColor: Color = .red
  private let colorsList = PlayerColor.allCases
  var onColorChange: (Color) -> Void

  var body: some View {

    HStack(alignment: .center, spacing: 24) {
      ForEach(colorsList, id: \.self) { diceColor in
        Button {
          onColorChange(diceColor.diceColor)
          selectedColor = diceColor.diceColor
        } label: {
          VStack(spacing: 10) {
            Image(systemName: selectedColor == diceColor.diceColor ? "dice.fill" : "dice")
              .font(.system(size: 48))
            Text(diceColor.rawValue)
              .fontWeight(selectedColor == diceColor.diceColor ? .bold : .regular )
              .font(.system(size: 24))
          }
          .foregroundColor(diceColor.diceColor)
        }
      }
    }
  }
}

struct ColorSelector_Previews: PreviewProvider {
  
  @State static var previewSelectedColor: Color = .blue

  static var previews: some View {
    ColorSelector { _ in
      return
    }
      .padding()
      .previewLayout(.sizeThatFits)
  }
}
