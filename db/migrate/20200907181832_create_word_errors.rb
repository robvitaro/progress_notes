class CreateWordErrors < ActiveRecord::Migration[6.0]
  def change
    create_table :word_errors do |t|
      t.string :word, null: false
      t.date  :date, null: false
      t.references :patient, null: false, foreign_key: true
      t.references :progress_note, null: false, foreign_key: true
    end
  end
end
