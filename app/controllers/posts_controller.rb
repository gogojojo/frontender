class PostsController < ApplicationController
  def index
    @days = Day.all 
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  def create
    @post = Post.new(params.require(:post).permit(:title, :url, :description))
    if @post.save
      if Day.find_by(date: @post.created_at.strftime('%b %d'))
        @day = Day.find_by(date: @post.created_at.strftime('%b %d'))
        @post.day_id = @day.id 
        @post.upvotes = 1
        if current_user 
          @post.user_id = current_user.id
        end
        @post.save
        redirect_to '/'
      else
        @day = Day.create(date: @post.created_at.strftime('%b %d') )
        @post.day_id = @day.id
        @post.upvotes = 1
        if current_user 
          @post.user_id = current_user.id
        end
        @post.save
        redirect_to '/'
      end
    else
      redirect_to '/'
    end
  end
  def upvote
    @post = Post.find(params[:post_id])
    @post.upvotes += 1 
    @post.save
    redirect_to '/'
  end
  def downvote
    @post = Post.find(params[:post_id])
    @post.upvotes -= 1 
    @post.save
    redirect_to '/'
  end


end
