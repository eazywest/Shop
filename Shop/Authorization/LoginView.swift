import SwiftUI

struct LoginView: View {
    @State private var loginText: String = ""
    @State private var passwordText: String = ""
    @State private var showForgotPassword = false
    @State private var showRegistration = false
    
    var body: some View {
        
        VStack {
            Rectangle()
                .fill()
                .overlay(
                    Image("Header")
                        .resizable()
                        .ignoresSafeArea(.all)
                    
                )
                .frame(width: 410, height: 320)
            
            Text("Home store")
                .font(.system(size: 22, weight: .bold))
                .padding(.top, 20)
            
            VStack(spacing: 24) {
                CustomTextField(placeholder: "Логин", text: $loginText)
                CustomTextField(placeholder: "Пароль", text: $passwordText)
            }
            .padding(.top, 20)
            
            CustomButton(text: "Войти", action: {
                print("Кнопка войти нажата")
            })
            .padding(.top, 25)
            
            Button(action: {
                showForgotPassword = true
            }) {
                Text("Забыли пароль?")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.gray)
            }
            .padding(.top, 15)
            
            Button(action: {
                showRegistration = true
            }) {
                Text("Нет аккаунта? Зарегистрируйся!")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.gray)
            }
            .padding(.top, 5)
            
            Spacer()
        }
        
        .padding()
        .background(Color.white.opacity(0.7))
        .edgesIgnoringSafeArea(.top)
        .navigationDestination(isPresented: $showForgotPassword) {
            ForgotPasswordView()
        }
        .navigationDestination(isPresented: $showRegistration) {
            RegistrationView()
        }
        
    }
    
    
    
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
    
}
