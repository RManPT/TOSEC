module ApplicationHelper

  #verifica a existencia de um asset logical_path em localizações diferentes conforme se o server esta em producao ou em dev
    def asset_available? logical_path
        if Rails.configuration.assets.compile
          Rails.application.precompiled_assets.include? logical_path
        else
          Rails.application.assets_manifest.assets[logical_path].present?
        end
      end  
end
