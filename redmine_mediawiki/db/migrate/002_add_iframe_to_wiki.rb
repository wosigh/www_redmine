class AddIframeToWiki < ActiveRecord::Migration
  def self.up
	  add_column :wikis, :keep_internal, :boolean
	  add_column :wikis, :iframe_height, :string
	  add_column :wikis, :iframe_width, :string
  end

  def self.down
	  remove_column :wikis, :keep_internal
	  remove_column :wikis, :iframe_height
	  remove_column :wikis, :iframe_width
  end
end
