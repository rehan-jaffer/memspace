class AddReviewsToRepetitions < ActiveRecord::Migration[6.0]
  def change
    add_column :repetitions, :reviews, :integer, default: 0, null: false
  end
end
