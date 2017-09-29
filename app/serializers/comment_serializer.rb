class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  def editable
    scope == object.user
  end
end
