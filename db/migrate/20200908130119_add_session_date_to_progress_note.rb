class AddSessionDateToProgressNote < ActiveRecord::Migration[6.0]
  def change
    add_column :progress_notes, :session_date, :date, null: false
  end
end
