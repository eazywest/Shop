import SwiftUI

struct OrderRow: View {
    let order: Order

    var body: some View {
        HStack {
            Image(order.imageName)  // Замените "product_image" на ваше изображение
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)

            VStack(alignment: .leading) {
                Text("Заказ \(order.orderNumber)")
                    .font(.headline)
                Text("В процессе")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(order.date)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }

            Spacer()

            Text(order.price)
                .font(.headline)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct OrderRow_Previews: PreviewProvider {
    static var previews: some View {
        OrderRow(order: Order(orderNumber: "#123456", date: "15 мая 2024 г.", price: "150 ₽", imageName: "product_image"))
    }
}

