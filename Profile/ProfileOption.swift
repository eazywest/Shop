import SwiftUI

struct ProfileOption: View {
    let title: String
    let icon: String
    let destination: AnyView

    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.gray)
                    .frame(width: 24, height: 24)  // Задаем размер иконки

                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)

                Spacer()
            }
            .padding(.vertical, 8)
        }
    }
}

struct ProfileOption_Previews: PreviewProvider {
    static var previews: some View {
        ProfileOption(title: "Мои заказы", icon: "cart", destination: AnyView(EmptyView()))
    }
}

// заглушка пустой вьюхи
struct EmptyView: View {
    var body: some View {
        Text("В разработке")
            .font(.largeTitle)
    }
}

import SwiftUI

struct MyOrdersView: View {
    // Пример данных о заказах
    let orders: [Order] = [
        Order(orderNumber: "#123456", date: "15 мая 2024 г.", price: "150 ₽", imageName: "product_image"),
        Order(orderNumber: "#123456", date: "15 мая 2024 г.", price: "150 ₽", imageName: "product_image"),
        Order(orderNumber: "#123456", date: "15 мая 2024 г.", price: "150 ₽", imageName: "product_image"),
        Order(orderNumber: "#123456", date: "15 мая 2024 г.", price: "150 ₽", imageName: "product_image")
    ]

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.backward")
                Spacer()
                Text("Мои заказы")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()

            ScrollView {
                VStack(spacing: 16) {
                    ForEach(orders) { order in
                        OrderRow(order: order)
                    }
                }
                .padding()
            }

            Spacer()
            CustomTabBar()
        }
        .background(Color(.systemGray6))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct MyOrdersView_Previews: PreviewProvider {
    static var previews: some View {
        MyOrdersView()
    }
}

struct Order: Identifiable {
    let id = UUID()
    let orderNumber: String
    let date: String
    let price: String
    let imageName: String
}


