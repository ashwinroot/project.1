require 'rails_helper'

RSpec.describe "quizmasters/index", type: :view do
  before(:each) do
    assign(:quizmasters, [
      Quizmaster.create!(
        :user => nil,
        :quizid => "Quizid",
        :score => "Score",
        :quiz => nil
      ),
      Quizmaster.create!(
        :user => nil,
        :quizid => "Quizid",
        :score => "Score",
        :quiz => nil
      )
    ])
  end

  it "renders a list of quizmasters" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Quizid".to_s, :count => 2
    assert_select "tr>td", :text => "Score".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
