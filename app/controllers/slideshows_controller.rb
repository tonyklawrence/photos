class SlideshowsController < ApplicationController
  # GET /slideshows
  # GET /slideshows.xml
  def index
    @slideshows = Slideshow.all
  end

  # GET /slideshows/1
  # GET /slideshows/1.xml
  def show
    @slideshow = Slideshow.find(params[:id])
  end

  # GET /slideshows/new
  # GET /slideshows/new.xml
  def new
    @slideshow = Slideshow.new
  end

  # GET /slideshows/1/edit
  def edit
    @slideshow = Slideshow.find(params[:id])
  end

  # POST /slideshows
  # POST /slideshows.xml
  def create
    @slideshow = Slideshow.new(params[:slideshow])

    if @slideshow.save
      flash[:notice] = 'Slideshow was successfully created.'
      redirect_to(@slideshow)
    else
      render :action => "new"
    end
  end

  # PUT /slideshows/1
  # PUT /slideshows/1.xml
  def update
    @slideshow = Slideshow.find(params[:id])

    if @slideshow.update_attributes(params[:slideshow])
      flash[:notice] = 'Slideshow was successfully updated.'
      redirect_to(@slideshow)
    else
      render :action => "edit"
    end
  end

  # DELETE /slideshows/1
  # DELETE /slideshows/1.xml
  def destroy
    @slideshow = Slideshow.find(params[:id])
    @slideshow.destroy

    redirect_to(slideshows_url)
  end
end
