class AddvideofileToProducts < ActiveRecord::Migration
  def change
  	 add_column :products, :video_file_file_size, :integer
 add_column :products, :video_file_file_name, :string
 add_column :products, :video_file_content_type, :string
  end
end
