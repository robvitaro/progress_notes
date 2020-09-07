json.extract! progress_note, :id, :notes, :patient_id, :created_at, :updated_at
json.url progress_note_url(progress_note, format: :json)
