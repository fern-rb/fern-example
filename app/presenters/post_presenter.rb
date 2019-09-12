class PostPresenter
  def initialize(post)
    @post = post
  end

  def as_json(args)
    @post.as_json
  end
end
