import SwiftUI

struct OrderRow: View {
    let order: Order

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Заказ \(order.orderNumber)")
                    .font(.lexend(size: 16, weight: .regular))
                    .padding(.bottom, 5)
                Text("В процессе")
                    .font(.lexend(size: 14, weight: .regular))
                    .foregroundColor(.gray)
                    .padding(.trailing, 2)
                    .padding(.bottom, 2)
                Text(order.date)
                    .font(.lexend(size: 14, weight: .regular))
                    .foregroundColor(.gray)
            }

            Spacer()

            Text(order.price)
                .font(.lexend(size: 16, weight: .regular))
        }
        .padding(.trailing)
        .padding(.top, 20)
        .background(Color.white.opacity(0.7))
        .cornerRadius(10)
        
        HStack{
            Image(order.imageName_1)
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
            
            Image(order.imageName_2)
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
            
            Image(order.imageName_3)
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
        }
        
        .padding(.trailing, 220)
    }
}

struct OrderRow_Previews: PreviewProvider {
    static var previews: some View {
        OrderRow(order: Order(orderNumber: "#123456", date: "15 мая 2024 г.", price: "150 ₽", imageName_1: "Watch_1", imageName_2: "Watch_2", imageName_3: "Watch_3"))
    }
}

