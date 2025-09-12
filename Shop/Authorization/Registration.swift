import SwiftUI

struct RegistrationView: View {
    @State private var nameText: String = ""
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    @State private var confirmPasswordText: String = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            
            HStack{
                    Button {
                        dismiss()
                    } label: {
                        Image("Arrow")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.black)
                      
                          
                    }
                
                Text("Регистрация")
                    .font(.system(size: 22, weight: .bold))
                    
                
                    
            }
            .padding(.trailing, 190)
            .padding(.top,20)

            VStack(spacing: 24) {
                CustomTextField(placeholder: "Имя Фамилия", text: $nameText)
                CustomTextField(placeholder: "Электронная почта", text: $emailText)
                CustomTextField(placeholder: "Пароль", text: $passwordText, isSecure: true)
                CustomTextField(placeholder: "Подтвердите пароль", text: $confirmPasswordText, isSecure: true)
            }
            .padding(.top, 15)
            

            CustomButton(text: "Зарегистрироваться", action: {
                print("Кнопка Зарегистрироваться нажата")
            })
            .padding(.top, 350)

            Spacer()
        }
        .padding()
        .background(Color.white.opacity(0.7))
        .navigationBarBackButtonHidden(true)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
