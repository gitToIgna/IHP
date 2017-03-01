class ProductsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def create
		@product = current_user.products.build(product_params)
		if @product.save
			flash[:success] = "Product created!"
			redirect_to root_url
		else
			render 'static_pages/home'
		end
	end

	def destroy
	end

	private

	def product_params
		params.require(:product).permit(:name, :description, :expiration, :tag_list, :picture)
	end
end
