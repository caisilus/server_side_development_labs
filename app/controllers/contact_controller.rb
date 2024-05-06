require "csv"

class ContactController < ApplicationController
  def index ; end

  def create
    parsed_params = parse_params

    first_name = parsed_params[:first_name]
    unless first_name.strip.present?
      return render_error("Attention! You must enter your name.")
    end

    email = parsed_params[:email]
    unless email.strip.present?
      return render_error("Attention! Please enter a valid email address.")
    end

    unless valid_email?(email)
      return render_error("Attention! You have enter an invalid e-mail address, try again.")
    end

    unless parsed_params[:comments].strip.present?
      return render_error("Attention! Please enter your message.")
    end

    CSV.open(Rails.root.join("public", "data.csv"), "ab") { |csv| csv << parse_params.values }

    return render :success, layout: false, locals: {first_name:}
  end

  private

  def render_error(message)
    render :error, layout: false, locals: {message:}
  end

  def parse_params
    params.permit(:first_name, :last_name, :email, :phone, :select_service, :select_price, :comments)
  end

  def valid_email?(email)
    URI::MailTo::EMAIL_REGEXP.match?(email)
  end

  def valid_name?(name)
    name.trim.present?
  end

  def valid_comments?(comments)
    comments.trim.present?
  end
end
