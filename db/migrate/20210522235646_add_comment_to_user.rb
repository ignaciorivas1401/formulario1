class AddCommentToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Comment, :text
  end
end
