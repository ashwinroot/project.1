require 'rails_helper'

RSpec.describe "quizzes/show", type: :view do
  before(:each) do
    @quiz = assign(:quiz, Quiz.create!(
      :name => "Name",
      :id => "Id",
      :quizmaster => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Id/)
    expect(rendered).to match(//)
  end
end
