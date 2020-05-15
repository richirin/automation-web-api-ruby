Given /^I call the api to get the access token$/ do 
    requestBody = {
        "username" => "admin",
        "password" => "password123"
    }.to_json
    @responseAuth =  RestClient.post("https://restful-booker.herokuapp.com/auth", requestBody, :content_type => :json)
end

Then /^I create get my booking data/ do
    requestBody = {
        "firstname" => "James",
        "lastname" => "Brown",
        "totalprice" => 111,
        "depositpaid" => true,
        "bookingdates" => {
            "checkin" => "2018-01-01",
            "checkout" => "2019-01-01"
        },
        "additionalneeds" => "Breakfast"
    }.to_json
    @responseCreate =  RestClient.post("https://restful-booker.herokuapp.com/booking", requestBody, :content_type => :json, :accept => :json)
end

Then /^I delete my booking data/ do
    parsedResponseBooking = JSON.parse(@responseCreate)
    bookingId = parsedResponseBooking['bookingid']
    parsedResponseAuth = JSON.parse(@responseAuth)
    token = parsedResponseAuth['token']
    finalToken = "token=#{token}"
    @responseDelete =  RestClient.delete("https://restful-booker.herokuapp.com/booking/1", :Cookie => finalToken)
end