Rails.application.routes.draw do
  resources :reviewusers
  resources :checklists
  resources :reviews
  
  resources :schools do
    resources :reviews
  end

  devise_scope :user do
    get 'login', to: 'devise/sessions#new' #login_path
    get 'register', to: 'devise/registrations#new' #register_path
  end

  devise_for :users 
  resources :users do
    resources :schools
    resources :reviewusers
  end

  # root 'schools#index'
  root 'static_pages#homepg'
  get  'about-us',                    to: 'static_pages#aboutpg'
  get  'child-carers',                to: 'static_pages#childcarerspg'
  get  'help-and-advise',             to: 'static_pages#advisepg'
  get  'contact-us',                  to: 'static_pages#contactpg'
  get  'cookie-settiing',             to: 'static_pages#cookiesettingpg'
  get  'faqs',                        to: 'static_pages#faqpg'
  get  'finding-the-right-nursery',    to: 'static_pages#findingtherightschoolpg'
  get  'latest-ratings',              to: 'static_pages#latestratingspg'
  get  'parenting-guides',            to: 'static_pages#parentingguidespg'
  get  'privacy-and-cookie-policy',   to: 'static_pages#privacypg'
  get  'terms-and-conditions',        to: 'static_pages#termspg'
  get  'error',                       to: 'static_pages#errorpg'

  get  'safety-advise',               to: 'static_pages#safetyadvisepg'
  get  'provider-documents',          to: 'static_pages#providerdocumentpg'

  # user_types_urls
  get  'search/babysitters',          to: 'static_pages#usersbabysitterspg'
  get  'search/childminders',         to: 'static_pages#userschildminderspg'
  get  'search/nannies',              to: 'static_pages#usersnanniespg'
  get  'search/au-pairs',             to: 'static_pages#usersaupairspg'
  get  'search/nursery-nurses',       to: 'static_pages#usersnurserynursespg'
  get  'search/maternity-nurses',     to: 'static_pages#usersmaternitynursespg'

  get  'search/private-midwives',     to: 'static_pages#usersprivatemidwivespg'
  get  'search/household-helpers',    to: 'static_pages#usershouseholdhelpspg'

  mount Ckeditor::Engine => '/ckeditor'

  # redirects all unknow routes to homepage
  get '*path' => redirect('/')
end
