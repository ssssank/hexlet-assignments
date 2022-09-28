require "test_helper"

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  test 'opens all bulletins page' do
    get root_url
    assert_response :success
    assert_select 'h1', 'Bulletins'
  end

  test 'opens one bulletin page' do
    bulletin = Bulletin.create(title: "Title 1", body: "Body 1")

    get bulletin_url(bulletin.id)
    assert_response :success
    assert_select 'h4', 'Title 1'
    assert_select 'p', 'Body 1'
  end

  test 'opens one bulletin page with fixture' do
    bulletin = bulletins(:one)
    get bulletin_url(bulletin)
    assert_response :success
    assert_select 'h4', 'title1'
    assert_select 'p', 'body1'
  end
end
