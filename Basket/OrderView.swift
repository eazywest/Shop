import SwiftUI

struct OrderView: View {
    let cartItems: [CartItem]

    @State private var selectedPaymentMethod: PaymentMethod = .creditCard

    var subtotal: Double {
        cartItems.reduce(0) { (result, item) -> Double in
            let priceString = item.price.replacingOccurrences(of: "[^0-9\\.]", with: "", options: .regularExpression)
            if let price = Double(priceString) {
                return result + (price * Double(item.quantity))
            } else {
                return result
            }
        }
    }

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.backward")
                Spacer()
                Text("Заказ")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()

            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                   
                    ForEach(cartItems) { item in
                        HStack {
                            Image(item.imageName) 
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            Text(item.productName)
                                .font(.subheadline)
                        }
                    }

                 
                    VStack(alignment: .leading) {
                        Text("Итого")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.top, 10)

                        HStack {
                            Text("Товары")
                            Spacer()
                            Text("\(String(format: "%.2f", subtotal)) руб.")
                                .padding(.top, 10)
                        }

                        HStack {
                            Text("Доставка")
                            Spacer()
                            Text("500 руб.")
                                .padding(.top, 10)
                        }

                        Text("Стоимость доставки рассчитывается исходя из веса и адреса доставки.")
                            .font(.footnote)
                            .foregroundColor(.gray)
                            .padding(.top, 10)
                    }

                  
                    VStack(alignment: .leading) {
                        Text("Способ оплаты")
                            .font(.title3)
                            .fontWeight(.bold)

                        PaymentMethodView(paymentMethod: .creditCard, isSelected: selectedPaymentMethod == .creditCard) {
                            selectedPaymentMethod = .creditCard
                        }

                        PaymentMethodView(paymentMethod: .applePay, isSelected: selectedPaymentMethod == .applePay) {
                            selectedPaymentMethod = .applePay
                        }
                    }
                   
                }
                .padding()
                
            }
            VStack(spacing: 1){
                Button("Оплатить") {
                    
                    print("Оплатить заказ")
                }
                .foregroundColor(.white)
                .padding()
                .frame(width: 358, height: 48)
                .background(Color.black)
                .cornerRadius(10)
                CustomTabBar()
                    .padding(.bottom, -20)
                
            }
        }
        
       
        .background(Color.white.opacity(0.7))
                
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(cartItems: [
            CartItem(productName: "Шелковая блузка", price: "10 920,00 ₽", size: "M", quantity: 1, imageName: "product_image"),
            CartItem(productName: "Юбка-карандаш", price: "7 280,00 ₽", size: "S", quantity: 1, imageName: "product_image")
        ])
    }
}

