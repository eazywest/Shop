import SwiftUI

struct MyOrdersView: View {
    let orders: [Order] = [
        Order(orderNumber: "#123456", date: "15 мая 2024 г.", price: "150 ₽", imageName_1: "Watch_1", imageName_2: "Watch_2", imageName_3: "Watch_3"),
        Order(orderNumber: "#123456", date: "15 мая 2024 г.", price: "150 ₽", imageName_1: "Watch_1", imageName_2: "Watch_2", imageName_3: "Watch_3"),
        Order(orderNumber: "#123456", date: "15 мая 2024 г.", price: "150 ₽", imageName_1: "Watch_1", imageName_2: "Watch_2", imageName_3: "Watch_3"),
        Order(orderNumber: "#123456", date: "15 мая 2024 г.", price: "150 ₽", imageName_1: "Watch_1", imageName_2: "Watch_2", imageName_3: "Watch_3"),
    ]

    var body: some View {
        VStack {
            HStack {
                Image("Arrow")
                    .padding(.trailing, 240)
                Text("Мои заказы")
                    .font(.lexend(size: 18, weight: .bold))
                    .offset(x: -140)
                
                
                
            }
            .padding(.top, 10)

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
        .background(Color.white.opacity(0.7))
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
    let imageName_1: String
    let imageName_2: String
    let imageName_3: String
}
