import SwiftUI

struct CustomTabBar: View {
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 0)
                .fill(Color.white) 
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color(red: 237/255, green: 237/255, blue: 237/255)),
                    alignment: .top
                )
                .frame(width: 400, height: 75)

            HStack {
                TabBarButton(imageName: "House", text: "Главное")
                TabBarButton(imageName: "Сategories", text: "Категория")
                TabBarButton(imageName: "Basket", text: " Корзина")
                TabBarButton(imageName: "Profile", text: "Профиль")
            }
            .frame(width: 390, height: 54)
        }
        .frame(width: 390, height: 95)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}

struct TabBarButton: View {
    let imageName: String
    let text: String
    let systemImage: Bool

    
    init(imageName: String, text: String, systemImage: Bool = false) {
        self.imageName = imageName
        self.text = text
        self.systemImage = systemImage
    }

    var body: some View {
        VStack(spacing: 4) {
            if systemImage {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            } else {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
            
            Text(text)
                .font(.lexend(size: 12, weight: .medium))
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(.gray)
    }
}
