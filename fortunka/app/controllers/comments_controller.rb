class CommentsController < ApplicationController
  before_filter do
    @fortune = Fortune.find(params[:fortune_id])
  end

  def create
    @comment = @fortune.comments.build(params[:comment])
    @comment.save
    respond_to do |format|
      if @fortune.save
        format.html { redirect_to @fortune, notice: 'Fortune was successfully created.' }
        format.json { render json: @fortune, status: :created, location: @fortune }
      else
        format.html { render action: "new" }
        format.json { render json: @fortune.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @comment = @fortune.comments.find(params[:id])
  end

  def update
    @comment = @fortune.comments.find(params[:id])
    @comment.update_attributes(params[:comment])
    respond_to do |format|
      if @fortune.update_attributes(params[:fortune])
        format.html { redirect_to @fortune, notice: 'Fortune was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fortune.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @comment = @fortune.comments.find(params[:id])
    @comment.destroy
       respond_to do |format|
      format.html { redirect_to fortunes_url }
      format.json { head :ok }
    end
  end
end



