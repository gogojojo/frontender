class AddDayRefToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :day, index: true
    add_foreign_key :posts, :days
  end
end
