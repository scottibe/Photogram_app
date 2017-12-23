class Post < ApplicationRecord

  validates :image, presence: true

  has_attached_file :image, styles: { :medium => "640x" }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :user_id, presence: true

  validates :caption, length: {maximum: 300, minimum: 3 }

  belongs_to :user
  has_many :comments, dependent: :destroy


end
