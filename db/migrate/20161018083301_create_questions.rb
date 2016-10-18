class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :id
      t.references :quiz, index: true
      t.text :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :correct

      t.timestamps
    end
  end
end
