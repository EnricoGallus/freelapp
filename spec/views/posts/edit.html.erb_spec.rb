require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      title: "MyString",
      overview: "MyString",
      thumbnail: nil,
      content: "MyText",
      user: nil,
      published: false
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "input[name=?]", "post[overview]"

      assert_select "input[name=?]", "post[thumbnail]"

      assert_select "textarea[name=?]", "post[content]"

      assert_select "input[name=?]", "post[users_id]"

      assert_select "input[name=?]", "post[published]"
    end
  end
end
