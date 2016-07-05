require 'rails_helper'

describe AdminUser do
  before(:each) { @user = AdminUser.new(email: 'user@example.com') }

 subject { @user }
  it "email returns a string" do
     expect(@user.email).to match 'user@example.com'
  end
end
