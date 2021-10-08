class InvoicesController < ApplicationController
  def index
    @invoices = scope
    redirect_to new_user_session_path unless user_signed_in?
  end

  def show
    @invoice = scope.find(params[:id])

    respond_to do |format|
        format.html
        format.pdf do
            render pdf: "Invoice No. #{@invoice.id}",
            page_size: 'A4',
            template: "invoices/show.html.erb",
            layout: "pdf.html",
            orientation: "Landscape",
            lowquality: true,
            zoom: 1,
            dpi: 75
        end
    end
  end

private
    def scope
        ::Invoice.all.includes(:invoice_items)
    end
end
