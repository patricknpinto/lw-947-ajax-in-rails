if @review.valid?
  json.review_html render(partial: "reviews/review", formats: :html, locals: { review: @review })
  json.form_html render(partial: "reviews/form", formats: :html, locals: { restaurant: @restaurant, review: Review.new })
else
  json.form_html render(partial: "reviews/form", formats: :html, locals: { restaurant: @restaurant, review: @review })
end
