require 'spec_helper'

describe "generations/new" do
  before(:each) do
    assign(:generation, stub_model(Generation,
      :hash => "MyString"
    ).as_new_record)
  end

  it "renders new generation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => generations_path, :method => "post" do
      assert_select "input#generation_hash", :name => "generation[hash]"
    end
  end
end
