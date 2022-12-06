class BookRecordsController < ApplicationController
  before_action :set_book_record, only: %i[ show edit update destroy ]

  def index
    @book_record = BookRecord.all
  end

  # GET /book_records/1 or /book_records/1.json
  def show
  end

  # GET /book_records/new
  def new
    @book_record = BookRecord.new
  end

  # GET /book_records/1/edit
  def edit
  end

   # POST /book_records or /book_record.json
  def create
    @book_record = BookRecord.new(todo_list_params)

    respond_to do |format|
      if @book_record.save
        format.html { redirect_to book_record_url(@book_record), notice: "Todo list was successfully created." }
        format.json { render :show, status: :created, location: @book_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_record.errors, status: :unprocessable_entity }
      end
    end
  end


def update
  @book = Book.find(params[:id])
  if @book.update(book_params)
    redirect_to(@book)
  else
    render "edit"
  end
end



end
