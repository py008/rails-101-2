class Group < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  validates :title, presence: true

  has_many :groups_relationships
  has_manu :members, through: :group_relationships, source: :user
end
