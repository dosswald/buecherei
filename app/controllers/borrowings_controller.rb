class BorrowingsController < ApplicationController
  def index
    if params['customer_id']
	@borrowings = Borrowing.where(customer_id: params['customer_id']).all
    else
	@borrowings = Borrowing.all
    end

  end
end