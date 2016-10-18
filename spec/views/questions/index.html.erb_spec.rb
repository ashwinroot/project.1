require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :id => "Id",
        :quiz => nil,
        :question => "MyText",
        :option1 => "Option1",
        :option2 => "Option2",
        :option3 => "Option3",
        :correct => "Correct"
      ),
      Question.create!(
        :id => "Id",
        :quiz => nil,
        :question => "MyText",
        :option1 => "Option1",
        :option2 => "Option2",
        :option3 => "Option3",
        :correct => "Correct"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Option1".to_s, :count => 2
    assert_select "tr>td", :text => "Option2".to_s, :count => 2
    assert_select "tr>td", :text => "Option3".to_s, :count => 2
    assert_select "tr>td", :text => "Correct".to_s, :count => 2
  end
end
