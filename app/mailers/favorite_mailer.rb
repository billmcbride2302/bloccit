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
å
     mail(to: bill@pcrsocial.com, subject: "New comment on #{post.title}")
   end


end
