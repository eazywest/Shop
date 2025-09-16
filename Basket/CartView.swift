import SwiftUI

struct CartView: View {
    @State private var cartItems: [CartItem] = [
        CartItem(productName: "Шелковая блузка", price: "10 920,00 ₽", size: "M", quantity: 1, imageName: "Hands"),
        CartItem(productName: "Юбка-карандаш", price: "7 280,00 ₽", size: "S", quantity: 1, imageName: "Woman"),
        CartItem(productName: "Кожаные ботинки", price: "13 650,00 ₽", size: "38", quantity: 1, imageName: "Heel")
    ]

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Очистить") {
                    
                    cartItems = []
                }
                .padding(.trailing)
                .foregroundColor(.red)
            }

            ScrollView {
                VStack(spacing: 1) {
                    ForEach(cartItems) { item in
                        CartItemView(cartItem: item, onDelete: {
                            cartItems.removeAll { $0.id == item.id }
                        })
                    }
                    .padding(.top, 20)
                }
                
               
            }

           
            NavigationLink(destination: OrderView(cartItems: cartItems)) {
                Text("Оформить заказ")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 358, height: 48) 
                
                    .background(Color.black)
                    .cornerRadius(10)
            }
            .padding(.bottom)

            CustomTabBar()
        }
        .background(Color.white.opacity(0.7))
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

