import SwiftUI

struct CartView: View {
    @State private var cartItems: [CartItem] = [
        CartItem(productName: "Шелковая блузка", price: "10 920,00 ₽", size: "M", quantity: 1, imageName: "product_image"),
        CartItem(productName: "Юбка-карандаш", price: "7 280,00 ₽", size: "S", quantity: 1, imageName: "product_image"),
        CartItem(productName: "Кожаные ботинки", price: "13 650,00 ₽", size: "38", quantity: 1, imageName: "product_image")
    ] // Пример данных

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Очистить") {
                    // Логика очистки корзины
                    cartItems = []
                }
                .padding(.trailing)
            }

            ScrollView {
                VStack(spacing: 16) {
                    ForEach(cartItems) { item in
                        CartItemView(cartItem: item, onDelete: {
                            cartItems.removeAll { $0.id == item.id }
                        })
                    }
                }
                .padding()
            }

            // Кнопка "Оформить заказ"
            NavigationLink(destination: OrderView(cartItems: cartItems)) {
                Text("Оформить заказ")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 358, height: 48) // размеры кнопки
                
                    .background(Color.black)
                    .cornerRadius(10)
            }
            .padding(.bottom)

            CustomTabBar()
        }
        .background(Color(.systemGray6))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

struct CartItem: Identifiable {
    let id = UUID()
    let productName: String
    let price: String
    let size: String
    var quantity: Int
    let imageName: String
}

