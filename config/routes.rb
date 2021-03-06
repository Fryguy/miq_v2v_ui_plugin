# MiqV2vUI::Engine.routes.draw do
Rails.application.routes.draw do
  match '/migration' => 'migration#index', :via => [:get]
  match 'migration/*page' => 'migration#index', :via => [:get]

  get "migration_log/download_migration_log(/:id)",
    :action     => 'download_migration_log',
    :controller => 'migration_log'
end
