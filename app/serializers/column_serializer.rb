class ColumnSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :tasks
  has_many :tasks

  set_key_transform :camel
end
