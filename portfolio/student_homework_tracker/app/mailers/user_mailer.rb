class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def comment_email (comment)
    @comment = comment
    @user_comment = comment.commentable
    @user = @user_comment.comments.map(&:user)
    mail(to: @user.map(&:email), subject: 'New Comment')
  end
end
