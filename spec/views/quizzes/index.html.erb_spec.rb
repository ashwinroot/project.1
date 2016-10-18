require 'rails_helper'

RSpec.describe "quizzes/index", type: :view do
  before(:each) do
    assign(:quizzes, [
      Quiz.create!(
        :name => "Name",
        :id => "Id",
        :quizmaster => nil
      ),
      Quiz.create!(
        :name => "Name",
        :id => "Id",
        :quizmaster => nil
      )
    ])
  end

  it "renders a list of quizzes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
