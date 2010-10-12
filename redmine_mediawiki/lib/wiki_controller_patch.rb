require_dependency 'wiki_controller'
module Wikimedia
  module Patches
    module WikiControllerPatch

      def index_with_wiki_bypass

      if @wiki.external_wiki_link && @wiki.redirect_wiki
		if @wiki.keep_internal
			render 'wiki/iframe'
		else
			redirect_to @wiki.external_wiki_link
		end
        
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
      end
    end
  end
end
WikiController.send(:include, Wikimedia::Patches::WikiControllerPatch) unless WikiController.include?(Wikimedia::Patches::WikiControllerPatch)
