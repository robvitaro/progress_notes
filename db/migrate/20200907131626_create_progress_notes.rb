class CreateProgressNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :progress_notes do |t|
      t.string :notes
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
