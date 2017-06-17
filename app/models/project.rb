class Project < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy

  validates_presence_of :title, :body
end
