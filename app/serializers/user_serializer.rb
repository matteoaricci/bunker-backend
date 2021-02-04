class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :first_name, :last_name, :projects

  def projects 
    ActiveModel::SerializableResource.new(object.projects,  each_serializer: ProjectSerializer)
  end
  set_key_transform :camel
end
