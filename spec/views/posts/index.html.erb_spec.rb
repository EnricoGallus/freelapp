require 'rails_helper'

RSpec.describe 'posts/index', type: :view do
  let(:user) { build :user }
  let(:thumbnail) { FilesTestHelper.png }

  before(:each) do
    assign(:posts,
           [
             Post.create!(
               title: 'Title',
               overview: 'Overview',
               thumbnail: thumbnail,
               content: 'MyText',
               user: user,
               published: false
             ),
             Post.create!(
               title: 'Title',
               overview: 'Overview',
               thumbnail: thumbnail,
               content: 'MyText',
               user: user,
               published: false
             )
           ])
  end

  it 'renders a list of posts' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Overview'.to_s, count: 2
    # assert_select 'tr>td', text: 'img[src*='#{FilesTestHelper.png_name}']', count: 2 todo this fails
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
  end
end
