require 'rails_helper'

RSpec.describe Post, type: :model do

  it "post require a item_name" do
    post = Post.create(:item_name => nil)
    #expect(post.valid?).to eq(false)
    expect(post).to_not be_valid
    end

end
