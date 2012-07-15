require 'spec_helper'

describe "timecards/show" do
  before(:each) do
    @timecard = assign(:timecard, stub_model(Timecard,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/false/)
    rendered.should match(/Location/)
    rendered.should match(/Job/)
    rendered.should match(/Start/)
    rendered.should match(/End/)
    rendered.should match(/Color/)
  end
end
