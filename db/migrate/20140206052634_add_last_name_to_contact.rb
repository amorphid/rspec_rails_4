class AddLastNameToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :last_name, :string
  end
end
