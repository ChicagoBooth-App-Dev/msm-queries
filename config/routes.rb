Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" }) 

  get("/directors/:id", { :controller => "directors", :action => "detail" }) 
end
