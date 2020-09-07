class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.string :assessment, null: false
      t.decimal :score, null: false
      t.date :date, null: false
      t.references :patient, null: false, foreign_key: true
      t.references :progress_note, null: false, foreign_key: true
    end
  end
end
