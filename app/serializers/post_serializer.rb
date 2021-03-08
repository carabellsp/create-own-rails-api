class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :authors, :comments

  def authors
    ActiveModel::SerializableResource.new(object.author, each_serializer: AuthorSerializer)
  end

  def comments
    ActiveModel::SerializableResource.new(object.comments, each_serializer: CommentSerializer)
  end
end
