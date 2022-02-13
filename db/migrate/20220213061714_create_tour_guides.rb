class CreateTourGuides < ActiveRecord::Migration[7.0]
  def change
    create_table :tour_guides do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
