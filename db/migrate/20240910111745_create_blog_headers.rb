class CreateBlogHeaders < ActiveRecord::Migration[7.1]
  def change
    create_table :blog_headers do |t|
      t.string :title
      t.string :subtitle
      t.text :description

      t.timestamps
    end
  end
end
