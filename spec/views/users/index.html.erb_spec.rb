require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :login => "Login",
        :account => "Account",
        :password => "Password"
      ),
      stub_model(User,
        :name => "Name",
        :login => "Login",
        :account => "Account",
        :password => "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Account".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
