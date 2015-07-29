class AddActiveClientToClient < ActiveRecord::Migration
  def change
    add_column :clients, :active_client, :boolean
  end
end
