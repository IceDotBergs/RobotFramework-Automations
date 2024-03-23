*** Variables ***
#username field
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
...    validUsername=jc@dynastygm.com    
...    validPassword=Dynasty@2023    
...    invalidUsername=jc@hotmail.com    
...    invalidPassword=Pass@@123

#####Login Labels and Validation text#####
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

#forgot password page
${forgotPasswordTitleLabel}    Forgot your password?
${emailField}    xpath=//input[@type='email']
${nextButton}    xpath=//button[@type='submit']
${invalidEmail}    Email address not found
${forgotpasswordSuccess}    A six digit code has been sent to your email address.
${verifyButtonEnabled}    xpath=//body/app-root[1]/app-log-reg[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[2]/app-verification-form[1]/div[1]/div[4]/button[1]
${incorrectOTPlabel}    OTP entered is incorrect
${correctOTPchangePassEnabled}    Please reset your password before the timer above expires
${resendOTP}    xpath=//a[contains(text(),'Resend OTP')]

#Login page labels
&{loginLabels}    accountMismatch=Incorrect email or password. Please try again.    fieldRequired=This field is required

${loginButton}    xpath=//a[contains(text(),'Log in')]
${emailField}    xpath=//input[starts-with(@name,"email")]
${passwordField}    xpath=//input[starts-with(@name, "password")]
${loginButton2}    xpath=//span[contains(text(),'Log in')]
${rememberMe}    xpath=//input[@id='mat-mdc-checkbox-1-input']
${rememberMe-checked}    xpath=//input[contains(@class, "mdc-checkbox__native-control mdc-checkbox--selected")]
${forgotPassword}    xpath=//a[contains(text(),'Forgot your password?')]
${dontHaveAccount}    xpath=//a[contains(text(),'Don’t have an account? Register')]

#registration page labels
${registerTitleLabel}    Register with Lightning Dragon

*** Keywords ***
implicitWait-OTPexpire
    Sleep    300s