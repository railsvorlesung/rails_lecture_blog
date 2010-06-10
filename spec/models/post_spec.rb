require 'spec_helper'

describe Post do
  
  fixtures :posts, :categories, :comments
  
  before(:each) do
    @valid_attributes = {
      :title => "Paul ist doof",
      :body  => "Wer ist Paul?"
    }
    
    @invalid_attributes = {
      :title => "Paul ist doof"
    }
  end

  it "should create a new instance given valid attributes" do
    Post.create!(@valid_attributes)
  end
  
  it "should not create a new instance given invalid attributes" do
    lambda { Post.create!(@invalid_attributes) }.should raise_exception(ActiveRecord::RecordInvalid)
  end
  
  it "should load a title" do
    post = posts(:fancy_post)
    post.should be_instance_of(Post)
  end
  
  it "should have a title" do
    post = posts(:fancy_post)
    post.title.should_not be_nil
  end
  
  it "should have two categories" do
    post = posts(:fancy_post)
    post.should have(3).categories
  end
end
