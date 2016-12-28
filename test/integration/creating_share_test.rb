class CreatingShareTest < ActionDispatch::IntegrationTest

test 'creates share' do
  post '/shares',
    { share:
      { animal: 'cow', size: 'half', price: 4.0, fee: 50.0, delivery: false, quantity: 10 }
    }.to_json,
    { 'Accept' => Mime::JSON, 'Content_type' => Mime::JSON.to_s }
    
    assert_equal 201, reponse.status
    assert_equal Mime::JSON, response.content_type
    
    share = json(response.body)
    assert_equal share_url(share[:id]), response.location
  end
end