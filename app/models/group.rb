class Group < ApplicationRecord
    has_many :group_users
    has_many :users, through: :group_users

    def self.group_users(name)
        find_by(name: name).users
    end
end
