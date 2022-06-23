class CreateWordLists < ActiveRecord::Migration[7.0]
  def change
    create_table :word_lists do |t|
      t.string :list, null: false

      t.timestamps
    end
  end
end
