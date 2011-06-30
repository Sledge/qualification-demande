require 'spec_helper'

describe "qualifications/new.html.erb" do
  before(:each) do
    assign(:qualification, stub_model(Qualification,
      :name => "MyString",
      :refine_text => "MyString",
      :parent_id => 1,
      :lft => 1,
      :rgt => 1
    ).as_new_record)
  end

  it "renders new qualification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => qualifications_path, :method => "post" do
      assert_select "input#qualification_name", :name => "qualification[name]"
      assert_select "input#qualification_refine_text", :name => "qualification[refine_text]"
      assert_select "input#qualification_parent_id", :name => "qualification[parent_id]"
      assert_select "input#qualification_lft", :name => "qualification[lft]"
      assert_select "input#qualification_rgt", :name => "qualification[rgt]"
    end
  end
end
