class Drop < ActiveRecord::Migration[5.2]
  def change
    drop_table :experts
  end
end
