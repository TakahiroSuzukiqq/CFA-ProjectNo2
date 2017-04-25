require 'rails_helper'

RSpec.describe Post, type: :model do

  it "post requires a item_name" do
    post = Post.create(:item_name => nil)
    #expect(post.valid?).to eq(false)
    expect(post).to_not be_valid
    end

  it "post requires a item_name of at least 2 characters" do
    post = Post.create(:item_name => "a")
    expect(post).to_not be_valid
    end

  it "post requires a item_name of at least 2 characters" do
    post = Post.create(:item_name => "ab")
    expect(post).to be_valid
    end



end
