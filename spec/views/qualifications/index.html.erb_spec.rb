require 'spec_helper'

describe "qualifications/index.html.erb" do
  before(:each) do
    assign(:qualifications, [
      stub_model(Qualification,
        :name => "Name",
        :refine_text => "Refine Text",
        :parent_id => 1,
        :lft => 1,
        :rgt => 1
      ),
      stub_model(Qualification,
        :name => "Name",
        :refine_text => "Refine Text",
        :parent_id => 1,
        :lft => 1,
        :rgt => 1
      )
    ])
  end

  it "renders a list of qualifications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Refine Text".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
