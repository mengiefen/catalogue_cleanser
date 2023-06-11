class CreateAbbreviations < ActiveRecord::Migration[7.0]
  def change
    create_table :abbreviations do |t|
      t.string :letters
      t.references :dictionary_entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
