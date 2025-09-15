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
                    Text("★ 4.5 (1.2) Черный")
                        .font(.lexend(size: 16, weight: .regular))
                        .foregroundColor(.gray)
                        .lineLimit(1)
                    Text(product.price)
                        .font(.lexend(size: 16, weight: .regular))
                        .foregroundColor(.gray)
                        .padding(.top, 10)
                     
                }
                Spacer()
                Button(action: {
                    print("Товар добавлен в корзину")
                }) {
                    Text(" Купить")
                        .font(.lexend(size: 14, weight: .medium))
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
        .padding(.bottom, 10)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: Product(name: "Кроссовки New Kick", imageName: "shoes1", price: "2 520 руб"))
    }
}
