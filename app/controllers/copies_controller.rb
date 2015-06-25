class CopiesController < ApplicationController
  def index
    if params['book_id']
	@copies = Copy.where(book_id: params['book_id']).all
    else
	@copies = Copy.all
    end

  end
end
