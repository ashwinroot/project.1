class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :id
      t.references :quizmaster, index: true

      t.timestamps
    end
  end
end
