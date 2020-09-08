class Patient < ApplicationRecord
  has_many :progress_notes, dependent: :destroy
  has_many :scores, dependent: :destroy
  has_many :goals, dependent: :destroy
  has_many :word_errors, dependent: :destroy
end
