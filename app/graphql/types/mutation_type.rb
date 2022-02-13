module Types
  class MutationType < Types::BaseObject
    field :create_tour_guide, mutation: Mutations::CreateTourGuide
  end
end
