class Mutations::CreateTourGuide < Mutations::BaseMutation
  argument :name, String, required: true
  argument :email, String, required: true

  field :tour_guide, Types::TourGuideType, null: false
  field :errors, [String], null: true

  def resolve(name:, email:)
    tour_guide = TourGuide.new(name: name, email: email)

    if tour_guide.save
      {
        tour_guide: tour_guide,
        errrors: []
      }
    else
      {
        tour_guide: nil,
        errors: tour_guide.errors.full_messages 
      }
    end
  end
end