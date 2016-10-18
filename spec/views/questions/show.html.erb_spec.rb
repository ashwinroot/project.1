require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :id => "Id",
      :quiz => nil,
      :question => "MyText",
      :option1 => "Option1",
      :option2 => "Option2",
      :option3 => "Option3",
      :correct => "Correct"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Id/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Option1/)
    expect(rendered).to match(/Option2/)
    expect(rendered).to match(/Option3/)
    expect(rendered).to match(/Correct/)
  end
end
