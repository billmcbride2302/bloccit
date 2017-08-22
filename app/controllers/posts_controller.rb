class PostsController < ApplicationController


  def show
  	@post = Post.find(params[:id])
  end

   def destroy
     @post = Post.find(params[:id])
 
 # #8
     if @post.destroy
       flash[:notice] = "\"#{@post.title}\" was deleted successfully."
       redirect_to posts_path
     else
       flash.now[:alert] = "There was an error deleting the post."
       render :show
     end
   end

  def update
     @post = Post.find(params[:id])
     @post.title = params[:post][:title]
     @post.body = params[:post][:body]
 
     if @post.save
       flash[:notice] = "Post was updated."
       redirect_to [@topic, @post]
     else
       flash.now[:alert] = "There was an error saving the post. Please try again."
       render :edit
     end
  end


  def new
  	   @post = Post.new
       @topic = Topic.find(params[:topic_id])
  end

  def edit
     @post = Post.find(params[:id])
  end

   def create
 # #9
     @post = Post.new
     @post.title = params[:post][:title]
     @post.body = params[:post][:body]
     @topic = Topic.find(params[:topic_id])
     @post.topic = @topic

 # #10
     if @post.save
 # #11
       flash[:notice] = "Post was saved."
       redirect_to [@post.topic, @post]
     else
 # #12
       flash.now[:alert] = "There was an error saving the post. Please try again."
       render :new
     end
   end
end
end
