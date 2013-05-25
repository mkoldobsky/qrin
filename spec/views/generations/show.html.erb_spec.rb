require 'spec_helper'

describe "generations/show" do
  before(:each) do
    @generation = assign(:generation, stub_model(Generation,
      :hash => "Hash"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hash/)
  end
end
