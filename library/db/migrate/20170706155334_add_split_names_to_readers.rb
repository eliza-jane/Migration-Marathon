class AddSplitNamesToReaders < ActiveRecord::Migration
  def up
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string
    Reader.all.each do |r|
      first_name,last_name = r.full_name.split(' ')
      r.first_name = first_name
      r.last_name = last_name
      r.save!
    end
    remove_column :readers, :full_name
  end

  def down
    add_column :readers, :full_name, :string
    Reader.all.each do |r|
      r.full_name = "#{r.first_name} #{r.last_name}"
      r.save
    end
    remove_column :readers, :first_name
    remove_column :readers, :last_name
  end
end
