require 'test_helper'

class CertificatesControllerTest < ActionController::TestCase
  setup do
    @certificate = certificates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificate" do
    assert_difference('Certificate.count') do
      post :create, certificate: { area_code: @certificate.area_code, browser_full_version: @certificate.browser_full_version, browser_major_version: @certificate.browser_major_version, browser_type: @certificate.browser_type, cert_path: @certificate.cert_path, city: @certificate.city, country: @certificate.country, created_date: @certificate.created_date, dma_code: @certificate.dma_code, gmt_offset: @certificate.gmt_offset, hostname: @certificate.hostname, image_size: @certificate.image_size, ip_address: @certificate.ip_address, key: @certificate.key, latitude: @certificate.latitude, longitude: @certificate.longitude, os_type: @certificate.os_type, postal_code: @certificate.postal_code, provider: @certificate.provider, state: @certificate.state, url: @certificate.url, user_agent: @certificate.user_agent }
    end

    assert_redirected_to certificate_path(assigns(:certificate))
  end

  test "should show certificate" do
    get :show, id: @certificate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certificate
    assert_response :success
  end

  test "should update certificate" do
    put :update, id: @certificate, certificate: { area_code: @certificate.area_code, browser_full_version: @certificate.browser_full_version, browser_major_version: @certificate.browser_major_version, browser_type: @certificate.browser_type, cert_path: @certificate.cert_path, city: @certificate.city, country: @certificate.country, created_date: @certificate.created_date, dma_code: @certificate.dma_code, gmt_offset: @certificate.gmt_offset, hostname: @certificate.hostname, image_size: @certificate.image_size, ip_address: @certificate.ip_address, key: @certificate.key, latitude: @certificate.latitude, longitude: @certificate.longitude, os_type: @certificate.os_type, postal_code: @certificate.postal_code, provider: @certificate.provider, state: @certificate.state, url: @certificate.url, user_agent: @certificate.user_agent }
    assert_redirected_to certificate_path(assigns(:certificate))
  end

  test "should destroy certificate" do
    assert_difference('Certificate.count', -1) do
      delete :destroy, id: @certificate
    end

    assert_redirected_to certificates_path
  end
end
