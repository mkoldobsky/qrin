require 'spec_helper'

describe "generations/index" do
  before(:each) do
    assign(:generations, [
      stub_model(Generation,
        :hash => "Hash"
      ),
      stub_model(Generation,
        :hash => "Hash"
      )
    ])
  end

  it "renders a list of generations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hash".to_s, :count => 2
  end
end
