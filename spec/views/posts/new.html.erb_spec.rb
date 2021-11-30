require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  let(:user) { build :user }
  let(:thumbnail) { FilesTestHelper.png }

  before(:each) do
    assign(:post,
           Post.new(
             title: "MyString",
             overview: "MyString",
             thumbnail: thumbnail,
             content: "MyText",
             user: user,
             published: false
           ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "input[name=?]", "post[overview]"

      assert_select "input[name=?]", "post[thumbnail]"

      assert_select "input[name=?]", "post[content]"

      assert_select "input[name=?]", "post[published]"
    end
  end
end
