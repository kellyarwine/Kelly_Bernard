class PicturesController < ApplicationController
  def new
  end
  
  def show
    x = params[:id]
    @pic = Picture.find_by_id(x)
    
    @width = params[:width]
    @color = params[:color]
  end
  
  def index
    @pictures = Picture.all
    @width = params[:width]
    @color = params[:color]
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.title = params[:title]
    p.save
    
    redirect_to '/pictures'
  end
  
  def delete
    x = params[:id]
    Picture.delete(x)
    
    redirect_to '/pictures'
  end

  def edit
    @kelly = params[:id]
  end

  def update_record
       
    p = Picture.find_by_id(params[:id])    
    p.update_attributes(:url=>params[:url],:title=>params[:title]) 

    # Picture.update(params[:id], :url=>params[:url],:title=>params[:title])     
    # p.title = params[:title]
  
    p.save
    
    redirect_to '/pictures/'
  end
end














