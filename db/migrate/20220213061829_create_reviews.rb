class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :tour_guide, null: false, foreign_key: true
      t.integer :rate, default: 0
      t.text :comment

      t.timestamps
    end
  end
end
