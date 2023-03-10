class ReviewsController < ApplicationController
  before_action :set_list, only: [:create]

  # POST lists/:list_id/reviews
  def create
    @list
    @review = Review.new(review_params)
    @review.list = @list
    @bookmark = Bookmark.new

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

  def set_list
    @list = List.find(params[:list_id])
  end
end
