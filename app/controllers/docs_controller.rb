class DocsController < ApplicationController
  before_action :find_doc, only: [:edit, :update, :show, :destory]
  
  def index
    @docs = Doc.all.order("created_at DESC")
  
  end

  def show    
  end

  def new
    @doc = Doc.new
  
  end

  def create
    @doc = Doc.new(doc_params)

    if @doc.after_save
      redirect_to 'new'
    else
      render 'new'
    end
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
  
  end
  
  private
    def find_doc
      @doc = Doc.find(params[:id])

    end

    def doc_params
      params.require(:docs).permit(:title, :content)
    end

end
