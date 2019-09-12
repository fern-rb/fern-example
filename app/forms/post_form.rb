class PostForm
  def initialize(params)
    @title = params[:title]
    @body = params[:body]
  end

  def to_h
    {
      title: @title,
      body: @body
    }
  end
end
