class ApplicationController < ActionController::Base

	def index
		@marco = MarcoPoloGameOperation.new
	end

	def upload_file
    file_name = params[:gbd_file].original_filename
    file_data = File.read(params[:gbd_file].tempfile)
    unless File.open("#{Rails.root}/public/#{file_name}", "w+") { |file| file.write(file_data) }
      redirect_to root_url, :flash => { :error => "There was an error while processing the file please check the file and upalod it again"}
      return
    end
		SevenSegmentOperation.read_file file_name
    redirect_to root_url, :flash => { :notice => "File uploaded successfully. Please wait file is processing" }
  end

  def show_file;end
end
