module ApplicationHelper
    def asset_available? logical_path
        if Rails.configuration.assets.compile
          Rails.application.precompiled_assets.include? logical_path
        else
          Rails.application.assets_manifest.assets[logical_path].present?
        end
      end  
end
