//
//  Rectangle.swift
//  TD
//
//  Created by Lamotte Cyril on 12/10/2022.
//

import SwiftUI

struct RectangleView: View {
  
  @State var color = Color.blue;
  @State var rectangleWidth: CGFloat = 300

  var body: some View {
    Rectangle()
      .frame(width: rectangleWidth, height: 100)
      .foregroundColor(color)
      .onAppear() {
        withAnimation(.easeOut(duration: 1)) {
          color = Color.green
          rectangleWidth = 100
        }
      }
      .onTapGesture {
        withAnimation(.easeInOut(duration: 1)) {
          color = Color.red
          rectangleWidth = .infinity
        }
      }
  }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
      RectangleView()
    }
}
