require 'spec_helper'

describe "expenses/edit" do
  before(:each) do
    @expense = assign(:expense, stub_model(Expense,
      :account => "MyString",
      :amount => 1.5,
      :category => "MyString",
      :description => "MyString",
      :vendor => "MyString"
    ))
  end

  it "renders the edit expense form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expenses_path(@expense), :method => "post" do
      assert_select "input#expense_account", :name => "expense[account]"
      assert_select "input#expense_amount", :name => "expense[amount]"
      assert_select "input#expense_category", :name => "expense[category]"
      assert_select "input#expense_description", :name => "expense[description]"
      assert_select "input#expense_vendor", :name => "expense[vendor]"
    end
  end
end
