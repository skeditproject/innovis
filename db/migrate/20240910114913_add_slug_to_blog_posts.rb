class AddSlugToBlogPosts < ActiveRecord::Migration[7.1]
  def up
    add_column :blog_posts, :slug, :string
    add_index :blog_posts, :slug, unique: true
  end

  def down
    remove_index :blog_posts, column: :slug, if_exists: true
    remove_column :blog_posts, :slug, if_exists: true
  end
end
