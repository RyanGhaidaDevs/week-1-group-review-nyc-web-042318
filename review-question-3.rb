# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

lass User

  attr_accessor :name, :photos

  def initialize(name)
    @name = name
    @photos = []
  end


end
#############
class Photo

  attr_accessor  :comments
  attr_reader :user


  def initialize
    @user = user
    @comments = []
  end

  def user=(instance_of_user)
   @user = instance_of_user
   instance_of_user.photos << self
  end

  def make_comment(message)

    @comments <<  Comment.new(message)
  end

end

#############

class Comment

  ALL = []

  attr_accessor :comment

  def initialize(comment)
    @comment = comment
    ALL << self
  end

  def self.all
    ALL
  end

end 


photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
