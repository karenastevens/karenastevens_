require 'test_helper'

class SendMessageTest < ActionDispatch::IntegrationTest
  
  test "invalid message information" do
    get contact_path
    assert_no_difference 'ActionMailer::Base.deliveries.size' do 
      post contact_path, params: { message: { name:  "",
                                              email: "user@invalid",
                                              subject: "",
                                              content: "" } }
    end
    assert_template 'messages/new'
  end

  test "valid message information" do
    get contact_path
    assert_difference 'ActionMailer::Base.deliveries.size', 1 do
      post contact_path, params: { message: { name:  "Example User",
                                              email: "user@example.com",
                                              subject: "hi",
                                              content: "lorem ipsum" } }
    end
    follow_redirect!
    assert_template 'messages/new'
  end
end