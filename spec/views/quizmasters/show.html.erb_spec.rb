require 'rails_helper'

RSpec.describe "quizmasters/show", type: :view do
  before(:each) do
    @quizmaster = assign(:quizmaster, Quizmaster.create!(
      :user => nil,
      :quizid => "Quizid",
      :score => "Score",
      :quiz => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Quizid/)
    expect(rendered).to match(/Score/)
    expect(rendered).to match(//)
  end
end
