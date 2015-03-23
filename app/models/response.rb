class Response < ActiveRecord::Base
  belongs_to :exam
  belongs_to :question
  belongs_to :answer

  scope :question_answers, ->(question_id) {where(question_id: question_id)}
end
