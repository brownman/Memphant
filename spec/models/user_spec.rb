require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :full_name => "value for full_name",
      :email => "value for email",
      :name => "value for name",
      :password_salt => "value for password_salt",
      :password_hash => "value for password_hash",
      :gender => "value for gender",
      :birthdate => Date.today,
      :city => "value for city",
      :state => "value for state",
      :country => "value for country",
      :time_zone => "value for time_zone",
      :public_profile => false,
      :activation_key => "value for activation_key",
      :admin => false,
      :manage_rooms => false,
      :manage_messages => false,
      :manage_user => false
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
end
