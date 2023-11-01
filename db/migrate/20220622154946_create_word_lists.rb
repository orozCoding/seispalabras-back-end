class CreateWordLists < ActiveRecord::Migration[7.0]
  def change
    create_table :word_lists do |t|
      t.string :words, null: false, array: true
      t.bigint :user_id, null: false

      t.timestamps
      t.index :user_id
    end
  end
end
