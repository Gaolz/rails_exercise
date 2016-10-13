require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :content => "MyText",
        :user_id => 2
      ),
      Message.create!(
        :content => "MyText",
        :user_id => 2
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
