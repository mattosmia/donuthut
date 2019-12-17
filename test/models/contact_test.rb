require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # previous tests omitted

  test 'name, email, subject and messsage are required' do
    msg = Contact.new

    refute msg.valid?, 'Blank message should be invalid'

    assert_match /blank/, msg.errors[:name].to_s
    assert_match /blank/, msg.errors[:email].to_s
    assert_match /blank/, msg.errors[:subject].to_s
    assert_match /blank/, msg.errors[:message].to_s
  end
end