import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // Аватар и информация о пользователе
            VStack(alignment: .center) {
                Image("profile_image")  // Замените "profile_image" на ваше изображение
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())

                Text("Александра")  // Имя пользователя (можно сделать @State)
                    .font(.title2)
                    .fontWeight(.bold)

                Text("alexandra.k@email.com")  // Email пользователя (можно сделать @State)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.top)

            // Список опций профиля
            VStack(alignment: .leading) {
                ProfileOption(title: "Мои заказы", icon: "truck.box.truck", destination: AnyView(MyOrdersView()))
                ProfileOption(title: "Помощь", icon: "questionmark.circle", destination: AnyView(HelpView()))
                ProfileOption(title: "Выйти", icon: "arrow.left.square", destination: AnyView(EmptyView())) //заглушка
            }
            .padding(.top, 20)
            .padding(.horizontal)

            Spacer()
            CustomTabBar()
        }
        .background(Color(.systemGray6))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

