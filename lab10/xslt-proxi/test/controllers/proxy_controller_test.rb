require 'test_helper'

class ProxyControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get proxy_input_url
    assert_response :success
  end

  test "should get output" do
    get proxy_output_url
    assert_response :success
  end

  test  'check html  format' do
    get proxy_output_url, params: {side:'server', n: [1,2,3,2,1,2,5,3,3,2,1].to_s}
    res1 = response.parsed_body

    get proxy_output_url, params: {side: 'client-with-xslt', n: [1,2,3,2,1,2,5,3,3,2,1].to_s}
    res2 = response.parsed_body

    assert_not_equal res1, res2
  end

  test "should get client transform" do
    get proxy_output_url, params: { side: 'client-with-xslt', n: [1,2,3,2,1,2,5,3,3,2,1].to_s}
    assert_includes response.body, 'xml-stylesheet type="text/xsl" href="/browser_transform.xslt"'
  end
end