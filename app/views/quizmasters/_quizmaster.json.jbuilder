json.extract! quizmaster, :id, :user_id, :quizid, :score, :quiz_id, :created_at, :updated_at
json.url quizmaster_url(quizmaster, format: :json)