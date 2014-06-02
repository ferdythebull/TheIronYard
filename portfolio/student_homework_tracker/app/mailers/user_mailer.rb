class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def user_email(user)
    @user = user
    mail(to: user.email, subject: "Thank You For Joining the Iron Yard Student Homework Tracker")
  end

  def comment_email(comment)
    @comment = comment
    @user_comment = comment.commentable
    @user = @user_comment.comments.map(&:user)
    mail(to: @user.map(&:email).uniq, subject: 'New Comment')
  end
end
