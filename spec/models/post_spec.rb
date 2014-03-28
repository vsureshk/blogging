require 'spec_helper'
#TODO
describe Post do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "orders by title" do
  title1 = Post.create!(title: "mass title")
  title2 = Post.create!(title: "great title")
  expect(Post.ordered_by_title).to eq([title2,title1])
  end 	

  context "with 2 or more comments" do
  it "orders them in reverse cronologically" do
  	post = Post.create!(:title => "title")
  	comment1 = post.comments.create!(:body => "first comment")
    comment2 = post.comments.create!(:body => "second comment")
    expect(post.reload.comments).to eq([comment1,comment2])
  end
  end	
end
