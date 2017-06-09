Rails.application.routes.draw do
  devise_for :users
  # Root URL for devise
  root 'journal_entries#home'
  
  get "/", :controller => "journal_entries", :action => "home"

  # Routes for the Journal_entry resource:
  # CREATE
  get "/journal_entries/new", :controller => "journal_entries", :action => "new"
  post "/create_journal_entry", :controller => "journal_entries", :action => "create"

  # READ
  get "/journal_entries", :controller => "journal_entries", :action => "index"
  get "/journal_entries/:id", :controller => "journal_entries", :action => "show"

  # UPDATE
  get "/journal_entries/:id/edit", :controller => "journal_entries", :action => "edit"
  post "/update_journal_entry/:id", :controller => "journal_entries", :action => "update"

  # DELETE
  get "/delete_journal_entry/:id", :controller => "journal_entries", :action => "destroy"
  #------------------------------

  # Routes for the Friends_and_family resource:
  # CREATE
  get "/friends_and_families/new", :controller => "friends_and_families", :action => "new"
  post "/create_friends_and_family", :controller => "friends_and_families", :action => "create"

  # READ
  get "/friends_and_families", :controller => "friends_and_families", :action => "index"
  get "/friends_and_families/:id", :controller => "friends_and_families", :action => "show"

  # UPDATE
  get "/friends_and_families/:id/edit", :controller => "friends_and_families", :action => "edit"
  post "/update_friends_and_family/:id", :controller => "friends_and_families", :action => "update"

  # DELETE
  get "/delete_friends_and_family/:id", :controller => "friends_and_families", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
