class ApplicationController < ActionController::API
  rescue_from Fern::Parameters::Invalid do |e|
    render json: e.errors, status: 422
  end
end
