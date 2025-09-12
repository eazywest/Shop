import SwiftUI

struct SizeSelectionView: View {
    @Binding var selectedSize: String
    let sizes = ["S", "M", "L"]

    var body: some View {
        HStack {
            ForEach(sizes, id: \.self) { size in
                Text(size)
                    .font(.system(size: 16))
                    .fontWeight(selectedSize == size ? .bold : .regular)
                    .foregroundColor(selectedSize == size ? .black : .gray)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(selectedSize == size ? Color.black : Color.gray.opacity(0.5), lineWidth: 1)
                    )
                    .onTapGesture {
                        selectedSize = size
                    }
            }
        }
    }
}

struct SizeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SizeSelectionView(selectedSize: .constant("M"))
    }
}
