require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        title: "Title",
        overview: "Overview",
        thumbnail: "Thumbnail",
        content: "MyText",
        users: nil,
        published: false
      ),
      Post.create!(
        title: "Title",
        overview: "Overview",
        thumbnail: "Thumbnail",
        content: "MyText",
        users: nil,
        published: false
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Overview".to_s, count: 2
    assert_select "tr>td", text: "Thumbnail".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
