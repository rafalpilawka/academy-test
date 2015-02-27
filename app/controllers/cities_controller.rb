class CitiesController < ApplicationController


def index
	@cities = City.all
end

def show
	@city = City.find(params[:id])
end

def new
		@book = City.new
end

def create
	 	@city = City.create(city_params)
	 	
end

def edit
		@city = City.find(params[:id])
end

def update
		@city = City.find(params[:id])
		@city.update(city_params)
end

def destroy
		@city = City.find(params[:id])
		@city.destroy

end

