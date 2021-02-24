class Project < ApplicationRecord
    belongs_to :owner, class_name: "User", optional: true
    has_many :columns

    accepts_nested_attributes_for :columns
end
