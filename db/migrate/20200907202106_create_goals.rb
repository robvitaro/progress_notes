class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :length, null: false
      t.integer :number
      t.string :description, null: false
      t.date :date
      t.references :patient, null: false, foreign_key: true
      t.references :progress_note, null: false, foreign_key: true

      t.timestamps
    end
  end
end
