import SwiftUI

struct ExpandableTextView: View {
    let title: String
    let content: String
    @State private var isExpanded: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.headline)
                Spacer()
                Image(systemName: "chevron.\(isExpanded ? "up" : "down")")
            }
            .onTapGesture {
                isExpanded.toggle()
            }

            if isExpanded {
                Text(content)
                    .padding(.top, 8)
                    .transition(.slide)
            }
        }
        .padding(.bottom, 8)
    }
}

struct ExpandableTextView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandableTextView(title: "Описание", content: "очень длинное описание товара")
    }
}
