class WebApp < Sinatra::Base

  post '/eligible.json' do
  end

  get '/' do
    200
  end

  get '/health_check' do
    Account.pluck('max(id)')
    200
  end

  not_found do
    404
  end
end
