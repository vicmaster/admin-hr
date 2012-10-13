AdminHr::Application.routes.draw do
  devise_for :admins

  match 'admin' => 'admin#index'
  root :to => 'admin#index'

end
#== Route Map
# Generated on 12 Oct 2012 20:09
#
#             admin_session POST   /admins/sign_in(.:format)       devise/sessions#create
#     destroy_admin_session DELETE /admins/sign_out(.:format)      devise/sessions#destroy
#            admin_password POST   /admins/password(.:format)      devise/passwords#create
#        new_admin_password GET    /admins/password/new(.:format)  devise/passwords#new
#       edit_admin_password GET    /admins/password/edit(.:format) devise/passwords#edit
#                           PUT    /admins/password(.:format)      devise/passwords#update
# cancel_admin_registration GET    /admins/cancel(.:format)        devise/registrations#cancel
#        admin_registration POST   /admins(.:format)               devise/registrations#create
#    new_admin_registration GET    /admins/sign_up(.:format)       devise/registrations#new
#   edit_admin_registration GET    /admins/edit(.:format)          devise/registrations#edit
#                           PUT    /admins(.:format)               devise/registrations#update
#                           DELETE /admins(.:format)               devise/registrations#destroy
#                     admin        /admin(.:format)                admin#index
