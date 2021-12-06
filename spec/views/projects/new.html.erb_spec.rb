require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      name: "MyString",
      hourly_rate: "9.99",
      organization: nil,
      user: nil
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[name]"

      assert_select "input[name=?]", "project[hourly_rate]"

      assert_select "input[name=?]", "project[organization_id]"

      assert_select "input[name=?]", "project[user_id]"
    end
  end
end
