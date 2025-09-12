import SwiftUI

struct ForgotPasswordView: View {
    @State private var emailText: String = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            HStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image("Arrow")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.black)
                          
                    }
                }
                .padding(.leading, 10)
                
                
                Spacer()
                
                Text("Забыли пароль?")
                    .font(.system(size: 22, weight: .bold))
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(systemName: "arrow.backward")
                        .hidden()
                }
                .frame(width: 50)
                
            }
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
            .padding(.bottom, 40)

            VStack(spacing: 24) {
                CustomTextField(placeholder: "Электронная почта", text: $emailText)
            }
            .padding(.top, 30)

            CustomButton(text: "Восстановить пароль", action: {
                print("кнопка 'Восстановить пароль' нажата")
            })
            .padding(.top, 20)

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
