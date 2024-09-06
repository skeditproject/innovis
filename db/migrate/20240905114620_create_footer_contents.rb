class CreateFooterContents < ActiveRecord::Migration[7.1]
  def change
    create_table :footer_contents do |t|
      t.string :contact_phone
      t.string :contact_email
      t.text :services
      t.text :verticals
      t.text :legal

      t.timestamps
    end
  end
end
