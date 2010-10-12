class AddMediawikiToWiki < ActiveRecord::Migration
  def self.up
    add_column :wikis, :keep_internal, :string
  end

  def self.down
    remove_column :wikis, :keep_internal
  end
end
