require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do 
    @persons_name= params[:name]
    "Goodbye, #{@persons_name}"
  end 
  
  @persons_name=params[:jerome]
  
  get '/multiply/:num1/:num2' do 
    num1=params[:num1].to_i 
    num2= params[:num2].to_i
  (num1+num2).to_s
end 

end
