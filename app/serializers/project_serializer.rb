class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :columns

  def columns
    ActiveModel::SerializableResource.new(object.columns,  each_serializer: ColumnSerializer)
  end

  set_key_transform :camel
end
