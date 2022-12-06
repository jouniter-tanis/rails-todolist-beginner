require "test_helper"

class TodoRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo_record = todo_records(:one)
  end

  test "should get index" do
    get todo_records_url
    assert_response :success
  end

  test "should get new" do
    get new_todo_record_url
    assert_response :success
  end

  test "should create todo_record" do
    assert_difference("TodoRecord.count") do
      post todo_records_url, params: { todo_record: { description: @todo_record.description, status: @todo_record.status, title: @todo_record.title } }
    end

    assert_redirected_to todo_record_url(TodoRecord.last)
  end

  test "should show todo_record" do
    get todo_record_url(@todo_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo_record_url(@todo_record)
    assert_response :success
  end

  test "should update todo_record" do
    patch todo_record_url(@todo_record), params: { todo_record: { description: @todo_record.description, status: @todo_record.status, title: @todo_record.title } }
    assert_redirected_to todo_record_url(@todo_record)
  end

  test "should destroy todo_record" do
    assert_difference("TodoRecord.count", -1) do
      delete todo_record_url(@todo_record)
    end

    assert_redirected_to todo_records_url
  end
end
