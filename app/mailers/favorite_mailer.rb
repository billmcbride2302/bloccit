class FavoriteMailer < ApplicationMailer
  default from: "bill@pcrsocial.com"


  def new_comment(user, post, comment)
 
 # #18
     headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
     headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
     headers["References"] = "<post/#{post.id}@your-app-name.example>"
 
     @user = user
     @post = post
     @comment = comment
     mail(to: bill@pcrsocial.com, subject: "New comment on #{post.title}")
   end

   def new_post(post)
 
 # #18
     headers["Message-ID"] = "<posts/#{post.id}@your-app-name.example>"
     headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
     headers["References"] = "<post/#{post.id}@your-app-name.example>"
 
     @post = post

     mail(to: bill@pcrsocial.com, subject: "New comment on #{post.title}")
   end



end
