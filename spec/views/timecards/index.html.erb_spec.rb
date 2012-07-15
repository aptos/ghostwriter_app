require 'spec_helper'

describe "timecards/index" do
  before(:each) do
    assign(:timecards, [
      stub_model(Timecard,
        :title => "Title",
        :supervisor_hours => 1,
        :worker_hours => 2,
        :worker_count => 3,
        :payment => 4,
        :paid => false,
        :location => "Location",
        :job => "Job",
        :start => "Start",
        :end => "End",
        :color => "Color"
      ),
      stub_model(Timecard,
        :title => "Title",
        :supervisor_hours => 1,
        :worker_hours => 2,
        :worker_count => 3,
        :payment => 4,
        :paid => false,
        :location => "Location",
        :job => "Job",
        :start => "Start",
        :end => "End",
        :color => "Color"
      )
    ])
  end

  it "renders a list of timecards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Job".to_s, :count => 2
    assert_select "tr>td", :text => "Start".to_s, :count => 2
    assert_select "tr>td", :text => "End".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
