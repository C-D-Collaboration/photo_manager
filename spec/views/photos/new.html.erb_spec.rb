require 'rails_helper'

RSpec.describe "photos/new", type: :view do
  before(:each) do
    assign(:photo, Photo.new(
      description: "MyString",
      genre: "MyString"
    ))
  end

  it "renders new photo form" do
    render

    assert_select "form[action=?][method=?]", photos_path, "post" do

      assert_select "input[name=?]", "photo[description]"

      assert_select "input[name=?]", "photo[genre]"
    end
  end
end
