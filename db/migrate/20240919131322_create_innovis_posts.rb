class CreateInnovisPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :innovis_posts do |t|
      t.string :title
      t.text :content
      t.string :section_key

      t.timestamps
    end
  end
end
