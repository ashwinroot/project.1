class Quiz < ActiveRecord::Base
  belongs_to :quizmaster
  has_many :quizmasters
end
