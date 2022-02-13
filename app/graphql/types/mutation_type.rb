module Types
  class MutationType < Types::BaseObject
    field :create_tour_guide, mutation: Mutations::CreateTourGuide
    field :create_review, mutation: Mutations::CreateReview
  end
end
