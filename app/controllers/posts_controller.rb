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
    presenter PostPresenter
    request do
      present params.validated
    end
  end

  post :create do
    form PostForm, :post
    presenter PostPresenter
    request do
      present Post.create!(@form.to_h)
    end
  end
end
