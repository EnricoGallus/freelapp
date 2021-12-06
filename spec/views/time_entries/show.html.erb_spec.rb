require 'rails_helper'

RSpec.describe "time_entries/show", type: :view do
  before(:each) do
    @time_entry = assign(:time_entry, TimeEntry.create!(
      name: "Name",
      project: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
