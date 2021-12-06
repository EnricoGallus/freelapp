require 'rails_helper'

RSpec.describe "time_entries/index", type: :view do
  before(:each) do
    assign(:time_entries, [
      TimeEntry.create!(
        name: "Name",
        project: nil,
        user: nil
      ),
      TimeEntry.create!(
        name: "Name",
        project: nil,
        user: nil
      )
    ])
  end

  it "renders a list of time_entries" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
