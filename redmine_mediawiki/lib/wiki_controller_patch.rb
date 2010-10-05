require_dependency 'wiki_controller'
module Wikimedia
  module Patches
    module WikiControllerPatch

      def index_with_wiki_bypass

      if @wiki.external_wiki_link && @wiki.redirect_wiki
        redirect_to @wiki.external_wiki_link
      else
        #redirect_to "http://yahoo.com"
        index_without_wiki_bypass
      end
      end
      

      def self.included(base)
        base.class_eval do
          unloadable
        end
        base.send(:alias_method_chain, :index, :wiki_bypass)
        #base.send(:alias_method_chain, :edit, :scm_settings)
      end

    end
  end
end
WikiController.send(:include, Wikimedia::Patches::WikiControllerPatch) unless WikiController.include?(Wikimedia::Patches::WikiControllerPatch)
