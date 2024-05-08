class TestimonialsController < ApplicationController
  IMAGE_URLS = %w[beaver1.jpg beaver2.jpg beaver3.jpg beaver4.png]
  def index
    @testimonial = Testimonial.new
  end

  def create
    image_url = File.join("beavers", IMAGE_URLS.sample)
    Testimonial.create(parse_params.merge(image_url:))
    redirect_to root_path
  end

  private

  def parse_params
    params.require(:testimonial).permit(:name, :ocupation, :title, :description)
  end
end
