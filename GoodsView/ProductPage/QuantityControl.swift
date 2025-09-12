import SwiftUI

struct QuantityControl: View {
    @Binding var quantity: Int

    var body: some View {
        HStack {
            Button(action: {
                if quantity > 0 {
                    quantity -= 1
                }
            }) {
                Image(systemName: "minus")
                    .padding(6)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .clipShape(Circle())
            }

            Text("\(quantity)")
                .font(.headline)
                .padding(.horizontal, 8)

            Button(action: {
                quantity += 1
            }) {
                Image(systemName: "plus")
                    .padding(6)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .clipShape(Circle())
            }
        }
    }
}

struct QuantityControl_Previews: PreviewProvider {
    static var previews: some View {
        QuantityControl(quantity: .constant(1))
    }
}
