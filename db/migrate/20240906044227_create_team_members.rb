class CreateTeamMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :designation
      t.string :image
      t.string :position

      t.timestamps
    end
  end
end
