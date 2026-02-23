Rails.application.routes.draw do
  # Root route — lands on the places list
  get("/", { :controller => "places", :action => "index" })

  # Places routes
  get("/places",          { :controller => "places", :action => "index" })
  get("/places/new",      { :controller => "places", :action => "new" })
  post("/places",         { :controller => "places", :action => "create" })
  get("/places/:id",      { :controller => "places", :action => "show" })

  # Entries routes (nested under a place)
  get("/places/:place_id/entries/new", { :controller => "entries", :action => "new" })
  post("/entries",                     { :controller => "entries", :action => "create" })
end
