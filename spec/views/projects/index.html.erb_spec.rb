require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        name: "Name",
        hourly_rate: "9.99",
        organization: nil,
        user: nil
      ),
      Project.create!(
        name: "Name",
        hourly_rate: "9.99",
        organization: nil,
        user: nil
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
