class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def checklist
    checked_posts = params[:posts] || []
    Post.where(id: checked_posts).update_all(checked: true)

    redirect_to root_path, notice: "Checklist submitted successfully!"
  end
end

