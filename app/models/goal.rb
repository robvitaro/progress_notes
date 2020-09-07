class Goal < ApplicationRecord
  belongs_to :patient
  belongs_to :progress_note
end
