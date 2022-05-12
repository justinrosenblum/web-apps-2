class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by({ "id" => params["id"] })
    # render /views/posts/show.html.erb
  end

  def new
    @post = Post.new
  end

  def create
    @post = Company.new
    @post["author"] = params["post"]["author"]
    @post["body"] = params["post"]["body"]
    @post["image"] = params["post"]["image"]
    redirect_to"/posts"
  end

end
