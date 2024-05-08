class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  before_action :load_testimonials

  def load_testimonials
    @testimonials = Testimonial.all
  end
end
