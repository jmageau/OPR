class Picture < ActiveRecord::Base
  attr_accessible :description, :image, :property_id
  has_attached_file :image

  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  belongs_to :property
end
