class Answer < ActiveRecord::Base
  belongs_to :question

  has_many :responses, dependent: :destroy

  validates :content,  presence: true
end