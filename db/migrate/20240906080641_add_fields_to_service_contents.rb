class AddFieldsToServiceContents < ActiveRecord::Migration[7.1]
  def change
    add_column :service_contents, :heading, :string
    add_column :service_contents, :paragraph, :text
    add_column :service_contents, :list, :text
  end
end
