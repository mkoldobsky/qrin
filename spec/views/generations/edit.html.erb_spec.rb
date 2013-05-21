require 'spec_helper'

describe "generations/edit" do
  before(:each) do
    @generation = assign(:generation, stub_model(Generation,
      :hash => "MyString"
    ))
  end

  it "renders the edit generation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => generations_path(@generation), :method => "post" do
      assert_select "input#generation_hash", :name => "generation[hash]"
    end
  end
end
