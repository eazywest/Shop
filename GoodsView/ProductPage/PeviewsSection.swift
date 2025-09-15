import SwiftUI

struct ReviewsSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Отзывы")
                .font(.headline)
                .padding(.bottom, 4)

            ReviewItem(author: "Chloe M.", review: "Отличное платье, идеально сидит.", rating: 5, likes: 10, dislikes: 2)
            ReviewItem(author: "Isabella R.", review: "Хорошее платье, но немного просвечивает.", rating: 4, likes: 5, dislikes: 1)

            Button(action: {
                print("Посмотреть все отзывы")
            }) {
                Text("Посмотреть все отзывы")
                    .foregroundColor(.blue)
            }
            .padding(.top, 8)
        }
    }
}

struct ReviewsSection_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsSection()
    }
}

struct ReviewItem: View {
    let author: String
    let review: String
    let rating: Int
    let likes: Int
    let dislikes: Int

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(author)
                    .font(.subheadline)
                Spacer()
                RatingView(rating: rating)
            }

            Text(review)
                .font(.body)
                .padding(.vertical, 4)

            HStack {
                HStack {
                    Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(.blue)
                    Text("\(likes)")
                }
                HStack {
                    Image(systemName: "hand.thumbsdown.fill")
                        .foregroundColor(.red)
                    Text("\(dislikes)")
                }
            }
        }
        .padding(.bottom, 8)
    }
}

struct RatingView: View {
    let rating: Int

    var body: some View {
        HStack {
            ForEach(0..<5) { index in
                Image(systemName: index < rating ? "star.fill" : "star")
                    .foregroundColor(.yellow)
                    .font(.caption)
            }
        }
    }
}
