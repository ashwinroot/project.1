class CreateQuizmasters < ActiveRecord::Migration
  def change
    create_table :quizmasters do |t|
      t.references :user, index: true
      t.string :quizid
      t.string :score
      t.references :quiz, index: true

      t.timestamps
    end
  end
end
