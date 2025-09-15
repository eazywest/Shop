import SwiftUI

struct CartItemView: View {
    let cartItem: CartItem
    let onDelete: () -> Void

    var body: some View {
        HStack {
            Image(cartItem.imageName) // Замените "product_image" на ваше изображение
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)

            VStack(alignment: .leading) {
                Text(cartItem.productName)
                    .font(.headline)
                Text("Цена: \(cartItem.price), Размер: \(cartItem.size)")
                    .font(.subheadline)
            }

            Spacer()

            HStack {
                Button(action: {
                    // Уменьшить количество
                }) {
                    Image(systemName: "minus")
                        .padding(4)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Circle())
                }

                Text("\(cartItem.quantity)")
                    .font(.headline)

                Button(action: {
                    // Увеличить количество
                }) {
                    Image(systemName: "plus")
                        .padding(4)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Circle())
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            alignment: .topTrailing
        ) {
            Button {
                onDelete()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.white, .red)
                    .font(.system(size: 20))
            }
            .offset(x: 10, y: -10)
        }
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(cartItem: CartItem(productName: "Шелковая блузка", price: "10 920,00 ₽", size: "M", quantity: 1, imageName: "product_image"), onDelete: {})
    }
}
