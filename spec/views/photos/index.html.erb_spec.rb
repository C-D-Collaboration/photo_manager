require 'rails_helper'

RSpec.describe "photos/index", type: :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        description: "Description",
        genre: "Genre"
      ),
      Photo.create!(
        description: "Description",
        genre: "Genre"
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "Genre".to_s, count: 2
  end
end
