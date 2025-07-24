require "application_system_test_case"

class SongsTest < ApplicationSystemTestCase
  setup do
    @song = songs(:one)
  end

  test "visiting the index" do
    visit songs_url
    assert_selector "h1", text: "Songs"
  end

  test "should search for a song" do
    visit songs_url
    click_on "Search song"

    fill_in "query", with: @song.title
    click_on "Search"

    assert_text "Results for \"#{@song.title}\":"
  end

  test "should destroy Song" do
    visit songs_url
    accept_confirm { click_on "Destroy", match: :first }

    assert_text "Song was successfully destroyed"
  end
end
