require 'rails_helper'

RSpec.describe "messages/edit", type: :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :content => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit message form" do
    render

    assert_select "form[action=?][method=?]", message_path(@message), "post" do

      assert_select "textarea#message_content[name=?]", "message[content]"

      assert_select "input#message_user_id[name=?]", "message[user_id]"
    end
  end
end
