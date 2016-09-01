class AddModeratorFlagToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :moderator, :boolean, default: false, null: false
  end
end
