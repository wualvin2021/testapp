class StaticPagesController < ApplicationController
  def index
    @posts = Post.all
  end

  def home
    @users = User.all
    @posts = Post.all
  end
end
