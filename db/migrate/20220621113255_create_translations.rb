class CreateTranslations < ActiveRecord::Migration[7.0]
  def change
    create_table :translations do |t|
      t.string :word
      t.integer :word_id

      t.timestamps
    end
  end
end
