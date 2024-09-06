class CreateNavbars < ActiveRecord::Migration[7.1]
  def change
    create_table :navbars do |t|
      t.string :title
      t.string :link
      t.integer :position

      t.timestamps
    end
  end
end
