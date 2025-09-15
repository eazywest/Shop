import SwiftUI

enum PaymentMethod {
    case creditCard
    case applePay
}

struct PaymentMethodView: View {
    let paymentMethod: PaymentMethod
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                Text(paymentMethod == .creditCard ? "Кредитная карта" : "Apple Pay")
                Spacer()
                Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
        }
        .foregroundColor(.black)
    }
}

struct PaymentMethodView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentMethodView(paymentMethod: .creditCard, isSelected: true, action: {})
    }
}


