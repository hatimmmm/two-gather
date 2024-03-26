class SearchController < ApplicationController
  def search
    category_id = params[:category_id].present? ? params[:category_id].to_i : nil
    query = params[:q].present? ? params[:q] : "*"
    clubs = Club.search(query)
    @results = clubs.joins(:club_categories).where(club_categories: { category_id: category_id })

    render turbo_stream: turbo_stream.update("clubs", partial: "clubs/clubs", locals: { clubs: @results })
  end
end
