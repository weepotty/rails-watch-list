class ReviewsController < ApplicationController


  # POST lists/:list_id/reviews
  def create
    @list = List.find(params[:list_id])
    @review = Review.new(review_params)
    @review.list = @list
    raise
    if @review.save
      redirect_to list_path(@list)
    else
      render 'lists/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:author, :stars, :content)
  end

end
