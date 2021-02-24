class User < ApplicationRecord
    has_secure_password

    has_many :owners, class_name: "Project", foreign_key: "owner_id"
    has_many :project_members
    has_many :projects, through: :project_members
    accepts_nested_attributes_for :projects
end
