class QuotationMsController < ApplicationController

	def index
		@quotationMs = QuotationM.page(page).per(15)
	end

	def show
		@quotationM = QuotationM.find(params[:id])		
		@quotationDs = @quotationM.quotationDs
	end

	def new
		@quotationM = QuotationM.new
		@quotationM.quotationDs.push(QuotationD.new)
	end

	def create
		@quotationM = QuotationM.new(quotationM_params)
		@quotationM.save
		redirect_to :action => :index
	end

	def edit
		@quotationM = QuotationM.find(params[:id])
		@quotationDs = @quotationM.quotationDs
	end

	def update
		@quotationM = QuotationM.find(params[:id])
		@quotationM.update(quotationM_params)
		redirect_to :action => :show, :id => @quotationM, :page => page
	end

	def destroy
		@quotationM = QuotationM.find(params[:id])
		@quotationM.destroy
		redirect_to :action => :index, :page => page
	end

	def quotationM_params
		params.require(:quotation_m).permit(
			:quotation_no, 
			:quotation_date,
			:customer, 
			:customer_factory, 
			:shipment,
			:payment
			)
	end

	def page
		params[:page]||1
	end
end
