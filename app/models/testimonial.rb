class Testimonial < ApplicationRecord
  validates :name, :title, :description, presence: true
end
