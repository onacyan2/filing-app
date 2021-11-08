class BusinessFilesController < ApplicationController

  def index
    @files = BusinessFile.order('created_at DESC')
  end

  def new
    @file = BusinessFile.new
  end

  def create
    @file = BusinessFile.new(file_params)
    
    if @file.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def file_params
    params.require(:business_file).permit(:file_title).merge(user_id: current_user.id)
  end

end
