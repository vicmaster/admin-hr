AdminHr::Application.routes.draw do
  devise_for :admins

  match 'admin' => 'admin#index'

  resource :admin, only: :show, format: false

  scope "api" do
    resources :employees
  end

  root :to => 'admin#index'

end
#== Route Map
# Generated on 13 Oct 2012 16:21
#
#         admin_session POST   /admins/sign_in(.:format)         devise/sessions#create
# destroy_admin_session DELETE /admins/sign_out(.:format)        devise/sessions#destroy
#        admin_password POST   /admins/password(.:format)        devise/passwords#create
#    new_admin_password GET    /admins/password/new(.:format)    devise/passwords#new
#   edit_admin_password GET    /admins/password/edit(.:format)   devise/passwords#edit
#                       PUT    /admins/password(.:format)        devise/passwords#update
#                 admin        /admin(.:format)                  admin#index
#                       GET    /admin                            admins#show
#             employees GET    /api/employees(.:format)          employees#index
#                       POST   /api/employees(.:format)          employees#create
#          new_employee GET    /api/employees/new(.:format)      employees#new
#         edit_employee GET    /api/employees/:id/edit(.:format) employees#edit
#              employee GET    /api/employees/:id(.:format)      employees#show
#                       PUT    /api/employees/:id(.:format)      employees#update
#                       DELETE /api/employees/:id(.:format)      employees#destroy
#                  root        /                                 admin#index
