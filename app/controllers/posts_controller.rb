class PostsController < ApplicationController
  get :index do
    params do
      param :page, :integer, min: 10, max: 20
      param :foo, :boolean
      param :sort, :string, values: %w[foo bar baz]
      param :quux, :string, required: true
      param :syzygy, :date, default: Date.today
      param :numbers, :integer, array: true
    end
    request do
      render json: params.validated.inspect
    end
  end

  post :create do
    request do
    end
  end

  delete :destroy do
    request do
    end
  end

  get :show do
    request do
    end
  end

  put :update do
    request do
    end
  end
end