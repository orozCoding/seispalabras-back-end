class CreateTranslations < ActiveRecord::Migration[7.0]
  def change
    create_table :translations do |t|
      t.string :used_word, null: false
      t.integer :word_id, null: false
      t.bigint :user_id, null: false

      t.timestamps
      t.index :user_id
    end
  end
end
