Function Get($uri="https://reqres.in/api/users") {
        $response = Invoke-RestMethod -Uri $uri
return $response
}



Function Post($uri="https://reqres.in/api/users"){
    $params = @{
        "name"= "admin";
        "job"= "leader";
    }
   $response = Invoke-RestMethod -Uri $uri -Method POST -Body $params
return $response    
}
#Invoke-WebRequest -Uri http://foobar.com/endpoint -Method POST -Body ($params|ConvertTo-Json) -ContentType "application/json"

Get
Post

