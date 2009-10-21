class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.xml
  def index
    @all_categories = Category.find(:all, :order => 'name')
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @category = Category.find(params[:id])
  end

  # GET /categories/new
  # GET /categories/new.xml
  def new
    @category = Category.new
    @all_categories = Category.find(:all, :order => 'name')
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
    @all_categories = Category.find(:all, :order => 'name')
  end

  # POST /categories
  # POST /categories.xml
  def create
    @category = Category.new(params[:category])

    if @category.save
      flash[:notice] = 'Category was successfully created.'
      redirect_to(@category)
    else
      render :action => "new"
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @category = Category.find(params[:id])

    if @category.update_attributes(params[:category])
      flash[:notice] = 'Category was successfully updated.'
      redirect_to(@category)
    else
      render :action => "edit"
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to(categories_url)
  end
end
