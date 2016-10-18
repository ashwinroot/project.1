json.extract! question, :id, :id, :quiz_id, :question, :option1, :option2, :option3, :correct, :created_at, :updated_at
json.url question_url(question, format: :json)