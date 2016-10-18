require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :id => "MyString",
      :quiz => nil,
      :question => "MyText",
      :option1 => "MyString",
      :option2 => "MyString",
      :option3 => "MyString",
      :correct => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_id[name=?]", "question[id]"

      assert_select "input#question_quiz_id[name=?]", "question[quiz_id]"

      assert_select "textarea#question_question[name=?]", "question[question]"

      assert_select "input#question_option1[name=?]", "question[option1]"

      assert_select "input#question_option2[name=?]", "question[option2]"

      assert_select "input#question_option3[name=?]", "question[option3]"

      assert_select "input#question_correct[name=?]", "question[correct]"
    end
  end
end
