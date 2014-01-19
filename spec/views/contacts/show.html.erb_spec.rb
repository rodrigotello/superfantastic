require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :name => "Name",
      :phone => "Phone",
      :email => "Email",
      :company => "Company",
      :message => "Message",
      :twitter => "Twitter",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/Company/)
    rendered.should match(/Message/)
    rendered.should match(/Twitter/)
    rendered.should match(/Website/)
  end
end
