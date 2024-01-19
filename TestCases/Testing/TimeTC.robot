*** Settings ***
Documentation       Test Case Login
Library             SeleniumLibrary
Library             DateTime


*** Test Cases ***
Test Login
      ${date}=  Get Current Date    UTC      exclude_millis=yes
#      ${plus14}=  Add Time To Date      ${date}      14 days
      #${future}   Convert Date      ${date}      result_format=%a %B %d %H:%M:%S UTC %Y
      ${future}   Convert Date      ${date}      result_format=%H_%M
      Log      ${future}      console=yes