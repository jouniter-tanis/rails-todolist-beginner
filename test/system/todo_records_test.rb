require "application_system_test_case"

class TodoRecordsTest < ApplicationSystemTestCase
  setup do
    @todo_record = todo_records(:one)
  end

  test "visiting the index" do
    visit todo_records_url
    assert_selector "h1", text: "Todo records"
  end

  test "should create todo record" do
    visit todo_records_url
    click_on "New todo record"

    fill_in "Description", with: @todo_record.description
    fill_in "Status", with: @todo_record.status
    fill_in "Title", with: @todo_record.title
    click_on "Create Todo record"

    assert_text "Todo record was successfully created"
    click_on "Back"
  end

  test "should update Todo record" do
    visit todo_record_url(@todo_record)
    click_on "Edit this todo record", match: :first

    fill_in "Description", with: @todo_record.description
    fill_in "Status", with: @todo_record.status
    fill_in "Title", with: @todo_record.title
    click_on "Update Todo record"

    assert_text "Todo record was successfully updated"
    click_on "Back"
  end

  test "should destroy Todo record" do
    visit todo_record_url(@todo_record)
    click_on "Destroy this todo record", match: :first

    assert_text "Todo record was successfully destroyed"
  end
end
