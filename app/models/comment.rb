class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :notifications
  
  after_create do
    # Pusher.trigger("user_#{@comment.blog.user_id}_channel", 'comment_created', {
    #   message: 'あなたの作成したブログにコメントが付きました'
    # })
    #Pusher.trigger("user_#{@comment.blog.user_id}_channel", 'notification_created', {
    #  unread_count: Notification.where(user_id: @comment.blog.user_id).count
    #})
  end
end
