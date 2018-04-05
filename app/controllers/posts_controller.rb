class PostForm
  def initialize(params)
    @params = params
  end

  def to_h
    @params.to_h
  end
end

class PostPresenter
  def initialize(post)
    @post = post
  end

  def as_json(args)
    @post.as_json
  end
end

class PostsController < ApplicationController
  get :index do
    doc %(Get a summary of an individual Automation workflow’s settings and
content. The trigger_settings object returns information for the first email in
the workflow.)
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
    doc %(Get a summary of an individual Automation workflow’s settings and
content. The trigger_settings object returns information for the first email in
the workflow.)
    params do
      param :page, :integer, min: 10, max: 20
      param :foo, :boolean
      param :sort, :string, values: %w[foo bar baz]
      param :quux, :string, required: true
      param :syzygy, :date, default: Date.today
      param :numbers, :integer, array: true
    end
    form PostForm, :post
    presenter PostPresenter
    request do
      present Post.new(@form.to_h)
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