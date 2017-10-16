class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :description, :price, presence: true

  def image_url
    if remote_image_url.present?
      remote_image_url
    else
      "https://loremflickr.com/150/150/#{CGI.escape name}"
    end
  end
end
