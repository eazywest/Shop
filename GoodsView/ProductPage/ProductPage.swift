
import SwiftUI

struct ProductDetailView: View {
    @State private var selectedColor: Color = .black
    @State private var selectedSize: String = "M"
    @State private var quantity: Int = 1

    let product: Product  //  ѕринимаем продукт в качестве параметра

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                //  »зображение продукта
                Image("Snikers")  //  «амените "dress_image" на ваше изображение
                    .resizable()
                    .scaledToFill()
                    .frame(width: 358, height: 250) // ѕримерна€ высота
                    .clipped()

                //  Ќазвание и цена
                Text(product.name)
                    .font(.title2)
                    .fontWeight(.bold)

                Text(product.price)
                    .font(.headline)

                //   нопка " упить" /  онтроллер количества
                HStack {
                    if quantity == 0 {
                        CustomButton(text: " упить", action: {
                            quantity = 1
                        })
                    } else {
                        QuantityControl(quantity: $quantity)
                    }
                    Spacer()
                }

                //  ÷вет
                Text("÷вет")
                    .font(.headline)
                    .padding(.top, 8)
                ColorSelectionView(selectedColor: $selectedColor)

                //  –азмер
                Text("–азмер")
                    .font(.headline)
                    .padding(.top, 8)
                SizeSelectionView(selectedSize: $selectedSize)

                //  ќписание
                ExpandableTextView(title: "ќписание", content: "ќписание товара. «десь будет подробное описание характеристик и преимуществ.")

                //  ’арактеристики
                ExpandableTextView(title: "’арактеристики", content: "–азличные характеристики товара (состав, размеры, особенности ухода и т.д.)")

                //  ƒоставка и возврат
                ExpandableTextView(title: "ƒоставка и возврат", content: "»нформаци€ об услови€х доставки и возможности возврата товара.")

                //  ќтзывы
                ReviewsSection()

            }
            .padding()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(name: "ѕлатье с принтом", imageName: "dress1", price: "1 999 ?")) // ѕример товара
    }
}
