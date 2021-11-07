class BusinessFilesController < ApplicationController

  def new
    @file = BusinessFile.new
  end

  def create
    @file = BusinessFile.new(file_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def file_params
    params.require(:business_files).permit(:name).marge(user_id: current_user.id)
  end

end
