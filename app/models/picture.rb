class Picture < ActiveRecord::Base
  validates :image, presence: true

  attachment :image, type: :image
end
