class ProductsController < ApplicationController
	before_filter :is_login?
	def index
		@products= Product.all
	end
	def new
		@product= Product.new
	end
	def create
		@product= Product.new(product_params)
		if @product.save
		redirect_to @product
	else 
		render 'new'
	end
end  

def load_subcat
  
  @category = Category.find(params[:category_id])

  @sub_categories = @category.sub_categories
  respond_to do |format|
    format.js
  end
end
	def show
		@product= Product.find(params[:id])
	end
	def edit
		@product= Product.find(params[:id])
	end
	def update
		@product= Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product
		else
			render "edit"
		end
	end
	
	def destroy
		@product= Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end
	private
	def product_params
		params.require(:product).permit(:title, :description, :price,:category_id, :sub_category_id, :photo, :video_file)
	end
end
