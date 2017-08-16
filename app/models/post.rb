class Post < ApplicationRecord
  extend FriendlyId

  has_attached_file :image,
                    styles: { large: "700x700>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  friendly_id :title, use: :slugged


end
