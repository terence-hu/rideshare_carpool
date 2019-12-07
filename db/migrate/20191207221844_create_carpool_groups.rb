class CreateCarpoolGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :carpool_groups do |t|

      t.timestamps
    end
  end
end
