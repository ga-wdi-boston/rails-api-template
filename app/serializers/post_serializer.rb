class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  def editable
    scope == object.user
  end
end
