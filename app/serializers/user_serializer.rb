class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :posts
  has_many :comments

  def posts
    ActiveModel::SerializableResource.new(object.posts, each_serializer: PostSerializer)
  end
end
