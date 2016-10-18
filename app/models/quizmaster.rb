class Quizmaster < ActiveRecord::Base
  belongs_to :user
  belongs_to :quiz
  has_many :quizzes
end
