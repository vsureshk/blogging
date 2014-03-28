class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :category
  has_many :tags
  validates :title, presence: true,length: {minimum: 5}

  #scope :find_id, lambda {|a| where(:id => a)}

  scope :find_id, ->(a) {where(:id => a)}

  #TODO
  def self.user_details
  	user = User.all
    user.each do |n|
    	if n.name == nil
    		n.name = "vsk"
    		n.save
      end
    end  
  end 

  def self.ordered_by_title
    post = Post.order("title")
  end   
end
 