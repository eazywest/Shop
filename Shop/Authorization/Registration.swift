import SwiftUI

struct RegistrationView: View {
    @State private var nameText: String = ""
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    @State private var confirmPasswordText: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isConfirmPasswordVisible: Bool = false

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Регистрация")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()

            VStack(spacing: 24) {
                CustomTextField(placeholder: "Имя Фамилия", text: $nameText)
                CustomTextField(placeholder: "Электронная почта", text: $emailText)

                HStack {
                    if isPasswordVisible {
                        TextField("Пароль", text: $passwordText)
                            .frame(width: 310)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                    } else {
                        SecureField("Пароль", text: $passwordText)
                            .frame(width: 310)
                    }
                    Button {
                        isPasswordVisible.toggle()
                    } label: {
                        Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                    }
                }
                .padding()
                .frame(width: 390, height: 60)
                .background(Color.white.opacity(0.7))
                .cornerRadius(10)

                HStack {
                    if isConfirmPasswordVisible {
                        TextField("Подтвердите пароль", text: $confirmPasswordText)
                            .frame(width: 310)
                    } else {
                        SecureField("Подтвердите пароль", text: $confirmPasswordText)
                            .frame(width: 310)
                    }
                    Button {
                        isConfirmPasswordVisible.toggle()
                    } label: {
                        Image(systemName: isConfirmPasswordVisible ? "eye" : "eye.slash")
                    }
                }
                .padding()
                .frame(width: 390, height: 60)
                .background(Color.white.opacity(0.7))
                .cornerRadius(10)
            }
            .padding(.top, 30)

            CustomButton(text: "Зарегистрироваться", action: {
                print("Кнопка Зарегистрироваться нажата")
            })
            .padding(.top, 30)

            Spacer()
        }
        .padding()
        .background(Color.white.opacity(0.7))
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
