
import SwiftUI

struct ProductDetailView: View {
    @State private var selectedColor: Color = .black
    @State private var selectedSize: String = "M"
    @State private var quantity: Int = 0

    let product: Product

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                HStack{
                    Button {
                        //
                    } label: {
                        Image("Arrow")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.black)
                      
                    }
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image("Tabback")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.black)
                            .padding()
                    }
                    
                    
                }
                Image("dress")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 330)
                    .frame(maxWidth: .infinity) // ← замените на это
                    .clipped()
                    .padding(.horizontal, -16)
                    .padding(.top, -10)
                

              
                Text(product.name)
                    .font(.lexend(size: 22, weight: .bold))
                   

                Text(product.price)
                    .font(.lexend(size: 16, weight: .regular))

                
                HStack {
                    if quantity == 0 {
                        CustomButton(text: " Купить", action: {
                            quantity = 1
                        })
                    } else {
                        Button("В корзине"){
                            
                            
                        }
                        QuantityControl(quantity: $quantity)
                    }
                    Spacer()
                }

              
                Text("Цвет")
                    .font(.headline)
                    .padding(.top, 8)
                ColorSelectionView(selectedColor: $selectedColor)

             
                Text("Размер")
                    .font(.headline)
                    .padding(.top, 8)
                SizeSelectionView(selectedSize: $selectedSize)

              
                ExpandableTextView(title: "Описание", content: "Описание товара. «Здесь будет подробное описание характеристик и преимуществ.")

              
                ExpandableTextView(title: "Характеристики", content: "Различные характеристики товара (состав, размеры, особенности ухода и т.д.)")

              
                ExpandableTextView(title: "Доставка и возврат", content: "Информация об условиях доставки и возможности возврата товара.")

            
                ReviewsSection()

            }
            .padding()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(name: "Платье с принтом", imageName: "dress1", price: "1 999 ₽")) 
    }
}
