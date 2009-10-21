class PhotosController < ApplicationController
  # GET /photos
  # GET /photos.xml
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.xml
  def show
    @photo = Photo.find(params[:id])
  end

  # GET /photos/new
  # GET /photos/new.xml
  def new
    @photo = Photo.new
    @all_categories = Category.find(:all, :order => 'name')
  end

  # GET /photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
    @all_categories = Category.find(:all, :order => 'name')
  end

  # POST /photos
  # POST /photos.xml
  def create
    @photo = Photo.new(params[:photo])

    if @photo.save
      flash[:notice] = 'Photo was successfully created.'
      redirect_to(@photo)
    else
      render :action => "new"
    end
  end

  # PUT /photos/1
  # PUT /photos/1.xml
  def update
    @photo = Photo.find(params[:id])

    if @photo.update_attributes(params[:photo])
      flash[:notice] = 'Photo was successfully updated.'
      redirect_to(@photo)
    else
      render :action => "edit"
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.xml
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to(photos_url)
  end
end
