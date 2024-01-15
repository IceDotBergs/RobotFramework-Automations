*** Variables ***

#username field
@{username_labels}    This field is required    
...    Min. 3 and Max. 25 in alphanumerical characters.    
...    NO special characters allowed (!%*@$)    
...    Your username is public, it can contain only a-z and 0-9.    
...    Username already exist



#date of birth field
${dob_field}    required=This field is required

#email field
&{email}    required=This field is required    
...    invalid=Invalid email address    
...    normal=Your email is kept private.

&{password}    required=This field is required    
...    length=Must be at least 8 characters    
...    numericContent=Must contain at least 1 number    
...    uppercase=Must contain at least 1 upper case character    
...    lowercase=Must contain at least 1 lower case character    
...    specialchar=Must contain at least 1 special character

#Login page labels
&{loginLabels}    accountMismatch=Incorrect email or password. Please try again.    fieldRequired=This field is required