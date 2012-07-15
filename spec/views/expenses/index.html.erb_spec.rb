require 'spec_helper'

describe "expenses/index" do
  before(:each) do
    assign(:expenses, [
      stub_model(Expense,
        :account => "Account",
        :amount => 1.5,
        :category => "Category",
        :description => "Description",
        :vendor => "Vendor"
      ),
      stub_model(Expense,
        :account => "Account",
        :amount => 1.5,
        :category => "Category",
        :description => "Description",
        :vendor => "Vendor"
      )
    ])
  end

  it "renders a list of expenses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Account".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Vendor".to_s, :count => 2
  end
end
