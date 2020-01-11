class ChangeDaysTillNextToInteger < ActiveRecord::Migration[6.0]
  def change
    remove_column :repetitions, :days_till_next
    add_column :repetitions, :days_till_next, :integer, null: false, default: 0
  end
end
