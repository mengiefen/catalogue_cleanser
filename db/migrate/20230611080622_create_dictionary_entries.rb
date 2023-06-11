class CreateDictionaryEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :dictionary_entries do |t|
      t.string :phrase
      t.boolean :canonical

      t.timestamps
    end
  end
end
