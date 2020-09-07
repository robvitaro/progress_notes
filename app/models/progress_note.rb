class ProgressNote < ApplicationRecord
  belongs_to :patient
  has_many :scores
  has_many :goals
  has_many :word_errors

  after_save :create_scores_goals_and_word_errors

  private

  def create_scores_goals_and_word_errors
    self.scores.destroy_all
    self.goals.destroy_all
    self.word_errors.destroy_all

    parser = NotesParser.new(self)
    parser.call

    parser.scores.each do |assessment, score|
      self.scores.create!(date: self.created_at, assessment: assessment, score: score, patient: self.patient)
    end

    parser.goals.each do |goal|
      self.goals.create!(date: self.created_at, description: goal[:description], length: goal[:length], number: goal[:number], patient: self.patient)
    end

    parser.errors.each do |error|
      self.word_errors.create!(date: self.created_at, word: error, patient: self.patient)
    end
  end
end
