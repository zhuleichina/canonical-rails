module ZhuleiCanonicalRails
  class Engine < ::Rails::Engine
    
    initializer 'canonical_rails.add_helpers' do |app|
      ActionView::Base.send :include, ZhuleiCanonicalRails::TagHelper
    end
  
  end
end
