class AddLogoToNavbar < ActiveRecord::Migration[7.1]
  def change
    add_column :navbars, :logo, :string
  end
end
