Pms::Application.routes.draw do  


  post "project/addproject"

  get "project/index"
  post "project/addtasks"
  post "project/addtask"
  get "project/attachments"  
  get "organization/edit"
  get "project/edit"
  get "project/tedit"  
  get "project/tasks"
  get "project/ctask"    
  post "project/taskedit"
  post "organization/orgedit"
  post "project/prgedit"
  get "project/add"
  get "project/download"  
  post "project/attachment"
  get "organization/result"
  get "project/tresult"  
  get "project/projects"    
  get "organization/home"
  get "organization/odelete"
  get "project/delete"
  get "project/tdelete"
  get "project/bulkcreatetasks"
#get "organization/autocomplete_org_name'
  get 'organization/autocomplete_org_name'
  post "organization/create"
  get "project/attach"
  get "organization/organizations"
  get "organization/new"
  
#  get :autocomplete_organization_pcount, :on => :organization
  
  match '/tresult',to:"project#tresult"
  match '/result',to:"organization#result" 
  match '/prgedit', to:"project#prgedit"
  match '/projects', to:"project#projects"  
  match '/attachments', to:"project#attachments"    
  match '/edit',to:"project#edit"
  match '/tasks',to:"project#tasks"  
  match '/tedit',to:"project#tedit"
  match '/index',to:"project#index"    
  match '/taskedit',to:"project#taskedit"    
  match '/delete' , to:"project#delete"
  match '/tdelete' , to:"project#tdelete"  
  match '/oedit',to: "organization#oedit"
  match '/orgedit',to: "organization#orgedit"
  match '/create', to:'organization#create'
  match '/attachment', to:'project#attachment'
  match '/addproject',to:'project#addproject'
  match '/addproject',to:'project#addtask'  
  match '/addproject',to:'project#addtasks'
  match '/organizations',to:'organization#organizations' 
  match '/odelete',to:'organization#odelete'   
  match '/home',to:'organization#home'    
  match '/new', to:'organization#new'
  match '/add', to:'project#add' 
  match '/download', to:'project#download'   
  match '/ctask',to:'project#ctask'
  match '/bulkcreatetasks',to:'project#bulkcreatetasks' 
  match '/attach',to:'project#attach'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'organization#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
