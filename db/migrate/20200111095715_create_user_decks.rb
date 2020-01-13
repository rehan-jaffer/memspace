class CreateUserDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_decks do |t|
      t.integer :user_id, null: false
      t.integer :deck_id, null: false
      t.timestamps
    end
  end
end
