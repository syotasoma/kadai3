class Booker < ApplicationRecord
  has_one_attached :profile_image
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true

def get_image
  unless image.attached?
    file_path = Rails.root.join('app/assets/images/no_image.jpg')
    image.attach(io: File.open(file_path), filename: 'sample-author1.jpg', content_type: 'image/jpeg')
  if image.attached?
    image
  end
 image
  end 
end 
end 