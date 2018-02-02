class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(post_title)
    title = Post.new(post_title)
    @posts << title
    @@post_count += 1
    title.author = self
  end

  def self.post_count
    @@post_count
  end
end
