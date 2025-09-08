import SwiftUI

struct ForgotPasswordView: View {
    @State private var emailText: String = ""

    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image(systemName: "arrow.backward")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Spacer()
                }
                .frame(width: 50) // Ширина для левой части
                
                Spacer()
                
                Text("Забыли пароль?")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(systemName: "arrow.backward")
                        .hidden() // Невидимая для баланса
                }
                .frame(width: 50) // Ширина для правой части
            }
            .padding()

            VStack(spacing: 24) {
                CustomTextField(placeholder: "Электронная почта", text: $emailText)
            }
            .padding(.top, 30)

            CustomButton(text: "Восстановить пароль", action: {
                print("кнопка 'Восстановить пароль' нажата")
            })
            .padding(.top, 30)

            Spacer()
        }
        .padding()
        .background(Color.white.opacity(0.7))
        
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
