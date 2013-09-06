class AddPostCommentLike < ActiveRecord::Migration
  def change
    create_table :posts do |post|
      post.string :title
      post.integer :likes_count, :default => 0
      post.integer :comments_count, :default => 0
      post.string :description
    end
    create_table :comments do |comment|
      comment.integer :commentable_id
      comment.string  :commentable_type
      comment.integer :post_id
      comment.string  :body

      comment.timestamps

    end
    create_table :likes do |like|
      like.integer  :user_id
      like.integer :post_id

    end


    Post.reset_column_information
    Post.all.each do |post|
      Post.update_counters post.id, :likes_count => post.likes.length
      Post.update_counters post.id, :comments_count => post.comments.length
    end
  end
end
