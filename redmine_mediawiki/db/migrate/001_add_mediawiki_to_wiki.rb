class AddMediawikiToWiki < ActiveRecord::Migration
  def self.up
    add_column :wikis, :external_wiki_link, :string
    add_column :wikis, :redirect_wiki, :boolean
	add_column :wikis, :keep_internal, :string
  end

  def self.down
    remove_column :wikis, :external_wiki_link
    remove_column :wikis, :redirect_wiki
	remove_column :wikis, :keep_internal
  end
end
