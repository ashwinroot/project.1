require 'rails_helper'

RSpec.describe "quizzes/edit", type: :view do
  before(:each) do
    @quiz = assign(:quiz, Quiz.create!(
      :name => "MyString",
      :id => "MyString",
      :quizmaster => nil
    ))
  end

  it "renders the edit quiz form" do
    render

    assert_select "form[action=?][method=?]", quiz_path(@quiz), "post" do

      assert_select "input#quiz_name[name=?]", "quiz[name]"

      assert_select "input#quiz_id[name=?]", "quiz[id]"

      assert_select "input#quiz_quizmaster_id[name=?]", "quiz[quizmaster_id]"
    end
  end
end
