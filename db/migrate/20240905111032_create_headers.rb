class CreateHeaders < ActiveRecord::Migration[7.1]
  def change
    create_table :headers do |t|
      t.string :title
      t.string :subtitle
      t.string :description

      t.timestamps
    end
  end
end
