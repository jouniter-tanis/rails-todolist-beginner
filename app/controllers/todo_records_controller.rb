class TodoRecordsController < ApplicationController
  before_action :set_todo_record, only: %i[ show edit update destroy ]

  # GET /todo_records or /todo_records.json
  def index
    @todo_records = TodoRecord.all

  end

  # GET /todo_records/1 or /todo_records/1.json
  def show
  end

  # GET /todo_records/new
  def new
    @todo_record = TodoRecord.new
  end

  # GET /todo_records/1/edit
  def edit
  end

  # POST /todo_records or /todo_records.json
  def create
    @todo_record = TodoRecord.new(todo_record_params)

    respond_to do |format|
      if @todo_record.save
        format.html { redirect_to todo_record_url(@todo_record), notice: "Todo record was successfully created." }
        format.json { render :show, status: :created, location: @todo_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todo_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_records/1 or /todo_records/1.json
  def update
    respond_to do |format|
      if @todo_record.update(todo_record_params)
        format.html { redirect_to todo_record_url(@todo_record), notice: "Todo record was successfully updated." }
        format.json { render :show, status: :ok, location: @todo_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todo_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_records/1 or /todo_records/1.json
  def destroy
    @todo_record.destroy

    respond_to do |format|
      format.html { redirect_to todo_records_url, notice: "Todo record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_record
      @todo_record = TodoRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_record_params
      params.require(:todo_record).permit(:title, :description, :status)
    end
end
