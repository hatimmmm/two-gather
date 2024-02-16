class CommentsController < ApplicationController
  def create
    data = JSON.parse(request.body.read)
    post_id = data["comment"]["post_id"]
    content = data["comment"]["content"]
    user_id = current_user.id
    @post = Post.find(post_id)

    new_comment = Comment.create(post_id: post_id, content: content, user_id: user_id)

    if new_comment.valid?
      render json: { status: "success", comment: new_comment }
    else
      render json: { status: "error", errors: new_comment.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
