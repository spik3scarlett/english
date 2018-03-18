Rails.application.routes.draw do
   root 'podaj_slowko#losuj_obrazek'
   post "/", to: 'podaj_slowko#check'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get '/what-can-you-see', to: 'podaj_slowko#losuj_obrazek'
   post '/what-can-you-see', to: 'podaj_slowko#check'
   get "check", to: 'podaj_slowko#check'


end
