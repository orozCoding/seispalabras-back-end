class CreateTranslations < ActiveRecord::Migration[7.0]
  def change
    create_table :translations do |t|
      t.string :word, null: false
      t.integer :word_id, null: false

      t.timestamps
    end
  end
end
