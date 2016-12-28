class GetShareTest < ActionDispatch::IntegrationTest
    
    test 'gets shares page' do
      get '/shares'
      assert_equal 200, response.status
      refute_empty response.body
        
        
    end
    
    
end