class Patient < ApplicationRecord
  has_many :progress_notes
end
