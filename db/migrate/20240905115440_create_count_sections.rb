class CreateCountSections < ActiveRecord::Migration[7.1]
  def change
    create_table :count_sections do |t|
      t.string :image
      t.string :number
      t.string :text

      t.timestamps
    end
  end
end
