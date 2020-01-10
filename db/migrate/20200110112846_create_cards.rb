class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :front, null: false
      t.string :back, null: false
      t.integer :deck_id, null: false
      t.timestamps
    end

    add_foreign_key :cards, :decks
    add_index :cards, :deck_id
  end
end
