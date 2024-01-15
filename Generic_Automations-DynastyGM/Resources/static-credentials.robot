*** Variables ***

#username field
&{uname_values}    belowMin=ab    
...    alreadyExist=test
...    invalid=cl&&  
...    valid=AutomationTest123

#password field
&{pword_values}    invalid1=1234abcd    #all small with number
...    invalid2=1234abcD    #No special char
...    invalid3=1234abc!    #No caps    
...    invalid4=1234aB!    #incorrect length
...    valid=1234abC!    

#email field
&{email_values}    invalidemail1=email.com    
...    invalidemail2=email@.com    
...    invalidemail3=email@com    
...    validemail=testautomation@email.com

#Login page credentials
&{active_credentials}   
...    validUsername=devmember3@mailinator.com    
...    validPassword=Pass@123    
...    invalidPassword=Pass@@123