class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
