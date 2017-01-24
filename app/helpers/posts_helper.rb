module PostsHelper
   def user_is_admin?(post)
      current_user && (current_user == post.user || current_user.admin?)
   end

   def user_is_moderator?(post)
      current_user && (current_user == post.user || current_user.admin? || current_user.moderator?)
   end
end
