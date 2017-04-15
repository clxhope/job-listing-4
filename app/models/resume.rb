class Resume < ApplicationRecord
  validates :content, presence: true
  belongs_to :job
  belongs_to :user
end
