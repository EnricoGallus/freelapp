require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  let(:user) { build :user }
  let(:thumbnail) { FilesTestHelper.png }

  before(:each) do
    @post = assign(:post,
                   Post.create!(
                     title: "Title",
                     overview: "Overview",
                     thumbnail: thumbnail,
                     content: "MyText",
                     user: user,
                     published: false
                   ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Overview/)
    expect(rendered).to match(/Thumbnail/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
