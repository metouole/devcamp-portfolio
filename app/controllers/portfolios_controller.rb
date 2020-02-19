class PortfoliosController < ApplicationController
	before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]

	layout 'portfolio'

    access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

	def index
		@portfolio_items = Portfolio.all
	end

	def angular
		@angular_portfolio = Portfolio.angular
	end

	def new
		@portfolio_item = Portfolio.new
		3.times { @portfolio_item.technologies.build }
	end

	def create
	    @portfolio_item = Portfolio.new(portfolio_params)

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portfolios_path, notice: 'Portfolio Item was successfully created.' }
	      else
	        format.html { render :new }
	        
	      end
	    end
 	end

    def edit
  		3.times { @portfolio_item.technologies.build }
  	end

  	def show
  	end

   def update
	    respond_to do |format|

	      if @portfolio_item.update(portfolio_params)
	        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
	        format.json { render :show, status: :ok, location: @portfolio_item }
	      else
	        format.html { render :edit }
	        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
	      end
	    end
   end

     def destroy
	    @portfolio_item.destroy
	    respond_to do |format|
	      format.html { redirect_to portfolios_url, notice: 'Portfolio Item was successfully destroyed.' }
	    end
	  end

	private

	def portfolio_params
		params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image, technologies_attributes: [:name])
	end

	def set_portfolio_item
		@portfolio_item = Portfolio.find(params[:id])
	end






end
