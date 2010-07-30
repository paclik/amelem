class AddAdresaToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :adresa, :string
  end

  def self.down
    remove_column :contacts, :adresa
  end
end
