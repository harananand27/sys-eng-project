class AddUserToCitations < ActiveRecord::Migration
  def change
    add_reference :citations, :user, index: true, foreign_key: true
  end
end
