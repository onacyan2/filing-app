class DocumentsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  # def index
  # @documents = Document.order("name")
  # @file = BusinessFile.find(params[:business_file_id])
  # end

  def new
    @document = Document.new
  end

  def create
    @document = Documents.new(document_params)
    if @document.save
      redirect_to business_file_documents_path
    else
      render :new
    end
  end

  private

  def document_params
    params.require(:document).permit(:company_name, :company_name_kana, :title).merge(item_id: @item.id)
  end
end
