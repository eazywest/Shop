import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            
            VStack(alignment: .center) {
                Image("Aleksandra")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(.bottom, 10)

                Text("Александра")
                    .font(.lexend(size: 22, weight: .bold))

                Text("alexandra.k@email.com")
                    .font(.lexend(size: 16, weight: .bold))
                    .foregroundColor(Color(red: 117/255, green: 117/255, blue: 117/255))
                        .tint(Color(red: 117/255, green: 117/255, blue: 117/255))
            }
            .padding(.top)

          
            VStack(spacing: 3) {
                ProfileOption(title: "Мои заказы", icon: "Track", destination: AnyView(MyOrdersView()))
                ProfileOption(title: "Помощь", icon: "Help", destination: AnyView(HelpView()))
                ProfileOption(title: "Выйти", icon: "ArrowForProfile", destination: AnyView(EmptyView()))
            }
            .padding(.top, 15)
            .padding(.leading, 10)

            Spacer()
            CustomTabBar()	
        }
        .background(Color.white.opacity(0.7))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

