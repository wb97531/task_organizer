require 'rails_helper'

RSpec.describe "doers/edit", :type => :view do
  before(:each) do
    @doer = assign(:doer, Doer.create!(
      :name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :password_confirmation => "MyString"
    ))
  end

  it "renders the edit doer form" do
    render

    assert_select "form[action=?][method=?]", doer_path(@doer), "post" do

      assert_select "input#doer_name[name=?]", "doer[name]"

      assert_select "input#doer_email[name=?]", "doer[email]"

      assert_select "input#doer_password[name=?]", "doer[password]"

      assert_select "input#doer_password_confirmation[name=?]", "doer[password_confirmation]"
    end
  end
end
