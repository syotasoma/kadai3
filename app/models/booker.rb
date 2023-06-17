class Booker < ApplicationRecord
  has_one_attached :profile_image
end
#モデルにイメージ持たせた