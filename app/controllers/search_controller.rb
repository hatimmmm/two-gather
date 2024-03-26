class SearchController < ApplicationController
  def search
    category_id = params[:category_id].present? ? params[:category_id].to_i : nil
    query = params[:q].present? ? params[:q] : "*"
    @results = if category_id
        Club.search(query, fields: [:name, :description], where: { category_id: category_id })
      else
        Club.search(query, fields: [:name, :description])
      end

    render turbo_stream: turbo_stream.update("clubs", partial: "clubs/clubs", locals: { clubs: @results })
  end
end
