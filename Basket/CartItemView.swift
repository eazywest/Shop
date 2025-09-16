import SwiftUI

struct CartItemView: View {
    let cartItem: CartItem
    let onDelete: () -> Void

    var body: some View {
        HStack {
            Image(cartItem.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 56, height: 56)

            VStack(alignment: .leading) {
                Text(cartItem.productName)
                    .font(.headline)
                Text("Цена: \(cartItem.price), Размер: \(cartItem.size)")
                    .font(.subheadline)
            }

            Spacer()

            HStack {
                Button(action: {
                   
                }) {
                    Image(systemName: "minus")
                        .padding(4)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Circle())
                }

                Text("\(cartItem.quantity)")
                    .font(.headline)

                Button(action: {
                
                }) {
                    Image(systemName: "plus")
                        .padding(4)
                        .background(Color.white.opacity(0.7))
                        .clipShape(Circle())
                }
            }
        }
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            alignment: .topTrailing
        ) {
           
            
        }
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(cartItem: CartItem(productName: "Шелковая блузка", price: "10 920,00 ₽", size: "M", quantity: 1, imageName: "Hands"), onDelete: {})
    }
}
