class CreateRepetitions < ActiveRecord::Migration[6.0]
  def change
    create_table :repetitions do |t|
      t.integer :card_id, null: false
      t.integer :user_id, null: false
      t.decimal :e_factor, null: false, default: 2.5
      t.date :last_review, null: false
      t.date :days_till_next, null: false
      t.timestamps
    end
    
    add_index :repetitions, :card_id
  end
end
