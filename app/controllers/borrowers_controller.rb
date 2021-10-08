class BorrowersController < ApplicationController
  def index
    redirect_to new_user_session_path unless user_signed_in?
    @borrower = scope
  end

  def show
    redirect_to new_user_session_path unless user_signed_in?
    @borrower = scope.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
          render pdf: "Invoice No. #{@borrower.id}",
          page_size: 'A4',
          template: "borrowers/show.html.erb",
          layout: "pdf.html",
          orientation: "Portrait",
          lowquality: true,
          zoom: 1,
          dpi: 75
      end
  end
  end

  def edit
  end

  def new
    @borrower = Borrower.new
  end

  def create
    @borrower = Borrower.new(borrower_params)

    if @borrower.save
      redirect_to index_path, notice: "Succesfully Fillup form wait to approve your application loan "
    end

  end

  private 

  def borrower_params
    params.require(:borrower).permit(:full_name,:address,:email,:loan_purpose,:price_lend,:phone_number,:months_to_pay)
  end

  def scope
    ::Borrower.all
  end
end
