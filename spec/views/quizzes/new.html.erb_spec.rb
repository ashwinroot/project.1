require 'rails_helper'

RSpec.describe "quizzes/new", type: :view do
  before(:each) do
    assign(:quiz, Quiz.new(
      :name => "MyString",
      :id => "MyString",
      :quizmaster => nil
    ))
  end

  it "renders new quiz form" do
    render

    assert_select "form[action=?][method=?]", quizzes_path, "post" do

      assert_select "input#quiz_name[name=?]", "quiz[name]"

      assert_select "input#quiz_id[name=?]", "quiz[id]"

      assert_select "input#quiz_quizmaster_id[name=?]", "quiz[quizmaster_id]"
    end
  end
end
