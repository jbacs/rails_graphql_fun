5.times do
  tour_guide = TourGuide.create(name: Faker::Name.name,
                                email: Faker::Internet.email)
  5.times do
    Review.create(tour_guide: tour_guide,
                  rate: rand(1..5),
                  comment: Faker::Lorem.paragraph(sentence_count: 3))
  end
end
