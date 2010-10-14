require 'redmine'
require_dependency 'wiki_controller_patch.rb'
Redmine::Plugin.register :redmine_mediawiki do
  name 'Redmine Wikimedia plugin'
  author 'Patrick Roberts'
  description 'This is a plugin that will redirect the wiki link to an external site.  Alternatively lets you use an Iframe instead.'
  version '0.0.2'
 end