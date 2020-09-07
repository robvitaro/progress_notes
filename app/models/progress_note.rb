class ProgressNote < ApplicationRecord
  belongs_to :patient
  has_many :word_errors

  after_save :create_word_errors

  private

  def create_word_errors
    self.word_errors.destroy_all

    parser = NotesParser.new(self)
    parser.call
    parser.errors.each do |error|
      self.word_errors.create!(date: self.created_at, word: error, patient: self.patient)
    end
  end
end
