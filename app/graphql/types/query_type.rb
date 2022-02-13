module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    ## tour_guides
    field :tour_guides, [Types::TourGuideType], null: false

    def tour_guides
      TourGuide.all
    end

    field :tour_guide, Types::TourGuideType, null: false do
      argument :id, ID, required: true
    end

    def tour_guide(id:)
      TourGuide.find(id)
    end

    ## reviews
    field :reviews, [Types::ReviewType], null: false

    def reviews
      Review.all
    end

    field :review, Types::ReviewType, null: false do
      argument :id, ID, required: true
    end

    def review(id:)
      Review.find(id)
    end
  end
end
