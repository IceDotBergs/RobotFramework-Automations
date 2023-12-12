*** Variables ***

#username field
${username_labels}    required=This field is required    
...    length=Min. 3 and Max. 25 in alphanumerical characters.    
...    notAllowed=NO special characters allowed (!%*@$)    
...    normal=Your username is public, it can contain only a-z and 0-9.    
...    existing=Username already exist



#date of birth field
${dob_field}    required=This field is required

#email field
${email}    required=This field is required    
...    invalid=This field is required    
...    normal=Your email is kept private.

${password}    required=This field is required    
...    length=Must be at least 8 characters    
...    numericContent=Must contain at least 1 number    
...    uppercase=Must contain at least 1 upper case character    
...    lowercase=Must contain at least 1 lower case character    
...    specialchar=Must contain at least 1 special character