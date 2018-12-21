class Sneaker < ApplicationRecord
 filterrific(
   available_filters: [
    :with_sneaker_sneakers_ref,
    :with_sneaker_brand,
    :with_sneaker_title,
    :with_sneaker_color,
   ]
 )
 
 has_many :stocks
 
 validates :sneakers_ref, presence: true
 validates :brand, presence: true
 validates :title, presence: true
 validates :color, presence: true
 validates :img_url, presence: true
 
 scope :with_sneaker_sneakers_ref, lambda { |sneaker_sneakers_refs|
  where(sneaker_sneakers_ref: [*sneaker_sneakers_refs])
}

scope :brand, lambda { |sneaker_brands|
  where(sneaker_brand: [*sneaker_brands])
}

scope :with_sneaker_title, lambda { |sneaker_titles|
  where(sneaker_title: [*sneaker_titles])
}

scope :with_sneaker_color, lambda { |sneaker_colors|
  where(sneaker_color: [*sneaker_colors])
}

end