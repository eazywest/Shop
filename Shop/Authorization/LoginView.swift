import SwiftUI

struct LoginView: View {
    @State private var loginText: String = ""
    @State private var passwordText: String = ""

    var body: some View {
        VStack {
            Rectangle()
                .fill()
                .overlay(
                    Image("Header")
                        .resizable()
                        
                )
                .frame(width: 390, height: 320)

            Text("Home store")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top, 20)

            VStack(spacing: 24) {
                CustomTextField(placeholder: "Логин", text: $loginText)
                CustomTextField(placeholder: "Пароль", text: $passwordText, isSecure: true)
            }
            .padding(.top, 30)

            CustomButton(text: "Войти", action: {
                print("Кнопка войти нажата")
            })
            .padding(.top, 30)

            Button(action: {
                print("Переход на страницу восстановления пароля")
            }) {
                Text("Забыли пароль?")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.top, 15)

            Spacer()
        }
        .padding()
        .background(Color.white.opacity(0.7))
        .edgesIgnoringSafeArea(.top)
    }

}




struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

