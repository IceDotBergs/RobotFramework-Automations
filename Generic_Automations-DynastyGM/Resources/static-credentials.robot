*** Variables ***

#username field
${uname_values}    belowMin=ab    
...    alreadyExist=Username already exist    
...    invalid=NO special characters allowed (!%*@$)    
...    valid=AutomationTest
...    
#password field
${pword_values}    invalid1=1234abcd    #all small with number
...    invalid2=1234abcD    #No special char
...    invalid3=1234abc!    #No caps    
...    invalid4=1234aB!    #incorrect length
...    valid=1234abC!    

