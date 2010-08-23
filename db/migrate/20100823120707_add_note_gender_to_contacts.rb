class AddNoteGenderToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :note, :text
    add_column :contacts, :gender, :boolean
  end

  def self.down
    remove_column :contacts, :gender
    remove_column :contacts, :note
  end
end
