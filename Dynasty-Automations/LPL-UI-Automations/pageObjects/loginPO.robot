#This is the Page Objects for LPL Login Page

*** Variables ***

#this contains all label that can be found and can be used to validate the page
&{LoginLabel}    loginTo=Login to letsplay.live    
...    header=Login
...    disclaimer=We’ll never share your email with anyone else.
...    forgotPassword=Forgot your password?

#Email hidden labels that show up
&{loginHiddenLabels}    fieldRequired=This field is required    
...    invalidEmail=Invalid email address
...    invalidAccount=Incorrect email or password. Please try again.

#Input and interactive fields in the page
${emailInput}    xpath=//input[starts-with(@name,"email")]
${passwordInput}    xpath=//input[starts-with(@name,"password")]
${rememberMe-unchecked}    xpath=//input[@id='mat-mdc-checkbox-1-input']
${rememberMe-checked}    xpath=//input[contains(@class, "mdc-checkbox__native-control mdc-checkbox--selected")]
${forgotPassword}    xpath=//a[contains(text(),'Forgot your password?')]
${dontHaveAccount}    xpath=//a[contains(text(),'Don’t have an account? Register')]

#Font families that are used by the page
&{login-FontFamilies}    popBold=Poppins-Bold    popMed=Poppins-Medium    popLight=Poppins-Light