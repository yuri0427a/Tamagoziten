class CreateSeaches < ActiveRecord::Migration[5.2]
  def change
    create_table :seaches do |t|

      t.timestamps
    end
  end
end
