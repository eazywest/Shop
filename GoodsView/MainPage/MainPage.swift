import SwiftUI

struct MainView: View {
    
    @State private var products: [Product] = [
        Product(name: "Кроссовки New Kick", imageName: "sneakers", price: "2 520.00 руб"),
        Product(name: "Рюкзак Urban Explorer", imageName: "backpack", price: "3 320.00 руб"),
        Product(name: "Кошелек Slim Ace Leather", imageName: "wallet", price: "1 915.00 руб"),
        Product(name: "Шорты для city feels LF", imageName: "shorts", price: "1 400.00 руб"),
        Product(name: "Polo wakaw young Easy knit", imageName: "sweater", price: "1 300.00 руб"),
        Product(name: "Юбка Klimini Medoo", imageName: "jeans", price: "1 400"),
        Product(name: "Зотинки для comfytalk Tracker", imageName: "boots", price: "2 400.00 руб"),
        Product(name: "Очки dramatikar", imageName: "glasses", price: "2 000.00 руб")
    ]

    var body: some View {
        VStack {
            
            SearchBar()
                .padding(.top)

           
            CategoryButtons()	
                .padding(.top, 15)

           
            ScrollView {
                LazyVStack {
                    ForEach(products) { product in
                        ProductCard(product: product)
                            .padding(.top, 1)
                    }
                }
            }

           
            CustomTabBar()
        }
        .background(Color.white.opacity(0.7))
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


struct Product: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let price: String
}

