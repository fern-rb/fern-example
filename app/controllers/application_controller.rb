class ApplicationController < ActionController::API
  include Fern::Api
  include Fern::Parameters
  include Fern::Form
  include Fern::Presenter

  rescue_from Fern::Parameters::Invalid do |e|
    render json: e.errors, status: 422
  end
end
