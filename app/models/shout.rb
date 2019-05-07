class Shout < ApplicationRecord
  belongs_to :user
  belongs_to :content, polymorphic: true

  delegate :username, to: :user

  validates :user, presence: true

  default_scope { order(created_at: :desc) }  
end
