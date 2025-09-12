import SwiftUI

struct ColorSelectionView: View {
    @Binding var selectedColor: Color

    let colors: [Color] = [.white, .black, .red]

    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Circle()
                    .fill(color)
                    .frame(width: 30, height: 30)
                    .overlay(
                        Circle()
                            .strokeBorder(selectedColor == color ? Color.blue : Color.clear, lineWidth: 2)  //  ¬ыдел€ем выбранный цвет
                    )
                    .onTapGesture {
                        selectedColor = color
                    }
            }
        }
    }
}

struct ColorSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSelectionView(selectedColor: .constant(.red))
    }
}
