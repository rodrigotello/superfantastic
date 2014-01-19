require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :company => "Company",
        :message => "Message",
        :twitter => "Twitter",
        :website => "Website"
      ),
      stub_model(Contact,
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :company => "Company",
        :message => "Message",
        :twitter => "Twitter",
        :website => "Website"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
