class User < ApplicationRecord
    has_secure_password

    has_many :projects
    accepts_nested_attributes_for :projects
end
