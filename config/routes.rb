AdminHr::Application.routes.draw do
  devise_for :admins

  match 'admin' => 'admin#index'
  resource :admin, only: :show, format: false
  root :to => 'admin#index'

end
#== Route Map
# Generated on 12 Oct 2012 23:55
#
#         admin_session POST   /admins/sign_in(.:format)       devise/sessions#create
# destroy_admin_session DELETE /admins/sign_out(.:format)      devise/sessions#destroy
#        admin_password POST   /admins/password(.:format)      devise/passwords#create
#    new_admin_password GET    /admins/password/new(.:format)  devise/passwords#new
#   edit_admin_password GET    /admins/password/edit(.:format) devise/passwords#edit
#                       PUT    /admins/password(.:format)      devise/passwords#update
#                 admin        /admin(.:format)                admin#index
#                       GET    /admin                          admins#show
#                  root        /                               admin#index
