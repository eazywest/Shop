import SwiftUI

struct CustomButton: View {
    let text: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(.white)
                .padding()
                .fontWeight(.bold)
                .frame(width: 358, height: 48)
                .background(Color.black)
                .cornerRadius(10)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: " Кнопка", action: {})
    }
}

