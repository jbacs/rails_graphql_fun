class Mutations::CreateReview < Mutations::BaseMutation
  argument :tour_guide_id, Integer, required: true
  argument :rate, Integer, required: true
  argument :comment, String, required: true

  field :review, Types::ReviewType, null: true
  field :errors, [String], null: true

  def resolve(tour_guide_id:, rate:, comment:)
    review = Review.new(tour_guide_id: tour_guide_id, rate: rate, comment: comment)
    if review.save
      {
        review: review,
        errors: []
      }
    else
      {
        review: nil,
        errors: review.errors.full_messages
      }
    end
  end
end