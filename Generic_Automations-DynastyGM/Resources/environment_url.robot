*** Settings ***

*** Variables ***
${browser}    chrome

#evn defaults to DEV
${env}    prod

#url for different env
&{lpl_url}    dev=https://dev.lpl.gg/home    stage=https://stage.lpl.gg/home    prod=https://gg.letsplay.live/home