import SwiftUI

struct CategoryButtons: View {
    let categories = ["Все", "Одежда", "Обувь", "Аксессуары"]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(categories, id: \.self) { category in
                    Button(action: {
                        print("Выбрана категория: \(category)")
                    }) {
                        Text(category)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .background(Color(.systemGray6))
                            .foregroundColor(.black)
                            .cornerRadius(20)
                    }
                }
            }
            
            .padding(.horizontal)
        }
    }
}

struct CategoryButtons_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButtons()
    }
}
