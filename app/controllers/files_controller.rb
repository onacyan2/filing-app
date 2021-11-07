class FilesController < ApplicationController

  def new
    @business_file = BusinessFile.new
  end

  def create
    @business_file = BusinessFile.new(file_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def file_params
    params.require(:businessfiles).permit(:name).marge(user_id: current_user.id)
  end
  
end
