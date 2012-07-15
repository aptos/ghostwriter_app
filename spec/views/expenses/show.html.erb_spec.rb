require 'spec_helper'

describe "expenses/show" do
  before(:each) do
    @expense = assign(:expense, stub_model(Expense,
      :account => "Account",
      :amount => 1.5,
      :category => "Category",
      :description => "Description",
      :vendor => "Vendor"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Account/)
    rendered.should match(/1.5/)
    rendered.should match(/Category/)
    rendered.should match(/Description/)
    rendered.should match(/Vendor/)
  end
end
