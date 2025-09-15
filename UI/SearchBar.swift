import SwiftUI

struct SearchBar: View {
    @State private var searchText: String = ""

    var body: some View {
        ZStack{
            TextField("", text: $searchText)
                .padding()
                .frame(width: 358, height: 48)
                .background(Color(.systemGray6))
                .cornerRadius(12)
            Image("Search")
                .frame(width: 24, height: 24)
                .offset(x: -150)
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
