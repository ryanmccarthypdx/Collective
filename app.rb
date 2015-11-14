require 'bundler/setup'

get '/' do
  @all_customers = customers.all
  erb :main
end

post '/new_customer' do
  new_cusomter = Customer.create(params[:address])
  Customer.process_new_customer(new_customer)
  redirect '/'
end
