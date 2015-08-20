class SubCategory < ActiveRecord::Base
		belongs_to :category, :dependent => :destroy
	#has_many :products, :dependent => :destroy

end
