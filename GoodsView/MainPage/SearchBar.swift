import SwiftUI

struct SearchBar: View {
    @State private var searchText: String = ""

    var body: some View {
        TextField("Поиск", text: $searchText)
            .padding()
            .frame(width: 358, height: 48)
            .background(Color(.systemGray6))
            .cornerRadius(10)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
