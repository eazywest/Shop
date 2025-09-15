import SwiftUI

struct CategoryButtons: View {
    let categories = ["Все", "Одежда", "Обувь", "Аксессуары"]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(categories, id: \.self) { category in
                    Button(action: {
                        print("Выбрана категория: \(category)")
                    }) {
                        Text(category)
                            .font(.lexend(size: 14, weight: .medium))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(Color(.systemGray6))
                            .foregroundColor(.black)
                            .cornerRadius(12)
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
