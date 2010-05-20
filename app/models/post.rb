class Post < ActiveRecord::Base
  has_many :comments
    
  def self.posts_and_comments
    find(:all, :conditions => {:published => true}, :include => [:comments])
  end
end
