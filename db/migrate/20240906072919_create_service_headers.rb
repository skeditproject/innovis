class CreateServiceHeaders < ActiveRecord::Migration[7.1]
  def change
    create_table :service_headers do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
