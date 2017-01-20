post '/reviews' do
  Review.create(params[:review])
  # game = Game.find(params[:review][:game_id])
  # reviews = Review.where(game_id: params[:review][:game_id])
  #
  # if reviews
  #   review_sum = reviews.reduce { |sum, review| sum + review.user_rating }
  #   p review
  #   average_rating = review_sum / reviews.length
  #   game.aggregate_rating = (average_rating * 0.5) + (game.rating * 0.5)
  # end

  redirect "/games/#{params[:review][:game_id]}"
end
