import SwiftUI

struct CustomTextField: View {
    let placeholder: String
    @Binding var text: String
    var isSecure: Bool = false

    var body: some View {
       
        SecureField(placeholder, text: $text)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(red: 224/255, green: 224/255, blue: 224/255), lineWidth: 1)
            )
            .frame(width: 358, height: 56)
            .background(Color.white.opacity(0.7))
                
        
        }
    }


struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(placeholder: "“Текст", text: .constant(""))
    }
}
