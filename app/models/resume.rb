class Resume < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :content, presence: true
  belongs_to :job
  belongs_to :user
end
