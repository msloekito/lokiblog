class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.text :title
      t.text :post
      t.string :author
      t.timestamps 
    end
  end
end
