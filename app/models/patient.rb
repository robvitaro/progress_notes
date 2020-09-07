class Patient < ApplicationRecord
  has_many :progress_notes
  has_many :scores
  has_many :goals
  has_many :word_errors
end
