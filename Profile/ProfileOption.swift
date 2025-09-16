import SwiftUI

struct ProfileOption: View {
    let title: String
    let icon: String
    let destination: AnyView

    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                Image( icon)
                    .foregroundColor(.gray)
                    .frame(width: 24, height: 24)
                    .padding()
                Text(title)
                    .font(.lexend(size: 16, weight: .regular))
                    .foregroundColor(.black)

                Spacer()
            }
            
        }
    }
}

struct ProfileOption_Previews: PreviewProvider {
    static var previews: some View {
        ProfileOption(title: "Мои заказы", icon: "Track", destination: AnyView(EmptyView()))
    }
}


struct EmptyView: View {
    var body: some View {
        Text("В разработке")
            .font(.largeTitle)
    }
}




