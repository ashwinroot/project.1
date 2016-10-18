require 'rails_helper'

RSpec.describe "quizmasters/edit", type: :view do
  before(:each) do
    @quizmaster = assign(:quizmaster, Quizmaster.create!(
      :user => nil,
      :quizid => "MyString",
      :score => "MyString",
      :quiz => nil
    ))
  end

  it "renders the edit quizmaster form" do
    render

    assert_select "form[action=?][method=?]", quizmaster_path(@quizmaster), "post" do

      assert_select "input#quizmaster_user_id[name=?]", "quizmaster[user_id]"

      assert_select "input#quizmaster_quizid[name=?]", "quizmaster[quizid]"

      assert_select "input#quizmaster_score[name=?]", "quizmaster[score]"

      assert_select "input#quizmaster_quiz_id[name=?]", "quizmaster[quiz_id]"
    end
  end
end
