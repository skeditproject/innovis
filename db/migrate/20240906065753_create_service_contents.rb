class CreateServiceContents < ActiveRecord::Migration[7.1]
  def change
    create_table :service_contents do |t|
      t.references :service, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
