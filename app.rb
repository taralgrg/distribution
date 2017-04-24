require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")

require("./lib/store")
require('./lib/brand')
require('./lib/annoying')
require("pg")
require("pry")

get("/") do
  @stores= Store.all()
  @brands= Brand.all()
  erb(:index)
end

post("/") do
   name = params.fetch("name")
   store = Store.new({:name => name})
   store.save()
   @stores= Store.all()
   @brands= Brand.all()
   erb(:index)
 end

 post("/b") do
    name = params.fetch("name")
    brand = Brand.new({:name => name})
    brand.save()
    @stores= Store.all()
    @brands= Brand.all()
    erb(:index)
  end

 post("/stores") do
   name = params.fetch("name")
   store = Store.new({:name => name, :id => nil})
   store.save()
   @stores = Store.all()
   @brands= Brand.all()
   erb(:index)
 end

 get("/stores/:id") do
   @store = Store.find(params.fetch("id").to_i())
   erb(:store_edit)
 end

  get("/stores/:id/edit") do
   @store = Store.find(params.fetch("id").to_i())
   erb(:store_edit)
  end

  patch("/stores/:id") do
   name = params.fetch("name")
   @store = Store.find(params.fetch("id").to_i())
   id = params.fetch("id").to_i()
   @store.update({:name => name, :id => id})
   erb(:store)
  end

 delete("/stores/:id") do
   @store = Store.find(params.fetch("id").to_i())
   @store.delete()
   @stores = Store.all()
   @brands = Brand.all()
   erb(:index)
 end

 post("/brands") do
    name = params.fetch("name")
    store_id = params.fetch("store_id").to_i()
    brand = Brand.new({:name => name})
    brand.save()
    @store = Store.find(store_id)
    erb(:store)
  end

 get("/brands/:id/edit") do
     @brand = Brand.find(params.fetch("id").to_i())
     erb(:brand_edit)
   end

 patch("/brands/:id") do
   name = params.fetch("name")
   @brand = Brand.find(params.fetch("id").to_i())
   @brand.update({:name => name})
    redirect to ("/brands/#{params.fetch("id").to_i()}")
   end

 delete("/brands/:id") do
   @brand = Brand.find(params.fetch("id").to_i())
   @brand.delete()
   redirect to('/')
 end

 get("/brands/:id") do
   @brand = Brand.find(params.fetch("id").to_i())
   erb(:brand)
   end
