class CopiesController < ApplicationController
  def index
    if params['book_id']
	@copies = Copy.where(book_id: params['book_id']).all
    else
	@copies = Copy.all
    end

  end
    
def show
    if params['borrowing_id']
	@copies = Copy.where(borrowing_id: params['borrowing_id']).all
    else
	@copies = Copy.all
    end

  end
    
end
