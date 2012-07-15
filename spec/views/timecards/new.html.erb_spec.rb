require 'spec_helper'

describe "timecards/new" do
  before(:each) do
    assign(:timecard, stub_model(Timecard,
      :title => "MyString",
      :supervisor_hours => 1,
      :worker_hours => 1,
      :worker_count => 1,
      :payment => 1,
      :paid => false,
      :location => "MyString",
      :job => "MyString",
      :start => "MyString",
      :end => "MyString",
      :color => "MyString"
    ).as_new_record)
  end

  it "renders new timecard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => timecards_path, :method => "post" do
      assert_select "input#timecard_title", :name => "timecard[title]"
      assert_select "input#timecard_supervisor_hours", :name => "timecard[supervisor_hours]"
      assert_select "input#timecard_worker_hours", :name => "timecard[worker_hours]"
      assert_select "input#timecard_worker_count", :name => "timecard[worker_count]"
      assert_select "input#timecard_payment", :name => "timecard[payment]"
      assert_select "input#timecard_paid", :name => "timecard[paid]"
      assert_select "input#timecard_location", :name => "timecard[location]"
      assert_select "input#timecard_job", :name => "timecard[job]"
      assert_select "input#timecard_start", :name => "timecard[start]"
      assert_select "input#timecard_end", :name => "timecard[end]"
      assert_select "input#timecard_color", :name => "timecard[color]"
    end
  end
end
