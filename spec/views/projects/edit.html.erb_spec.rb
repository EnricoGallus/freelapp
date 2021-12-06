require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      name: "MyString",
      hourly_rate: "9.99",
      organization: nil,
      user: nil
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input[name=?]", "project[name]"

      assert_select "input[name=?]", "project[hourly_rate]"

      assert_select "input[name=?]", "project[organization_id]"

      assert_select "input[name=?]", "project[user_id]"
    end
  end
end
