import SwiftUI

struct ProductCard: View {
    let product: Product

    var body: some View {
        VStack(alignment: .leading) {
            Image(product.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 358, height: 201)
                .clipped()

            Text(product.name)
                .font(.lexend(size: 18, weight: .bold))
                .frame(width: 358, height: 23, alignment: .leading)
                .lineLimit(1)

            HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Text("Характеристики товара")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .lineLimit(1)
                    Text(product.price)
                        .font(.headline)
                }
                Spacer()
                Button(action: {
                    print("Товар добавлен в корзину")
                }) {
                    Text(" Купить")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.black)
                        .cornerRadius(5)
                }
                .frame(width: 84, height: 32)
            }
            .frame(width: 358, height: 52)

        }
        .frame(width: 358, height: 312)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: Product(name: "Кроссовки New Kick", imageName: "shoes1", price: "2 520 руб"))
    }
}
