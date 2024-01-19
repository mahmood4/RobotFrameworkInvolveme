*** Settings ***

      ${date}=      Get Current Date      UTC      exclude_millis=yes
      ${plus14}=      Add Time To Date      ${date}      14 days
      ${future}      Convert Date      ${plus14}      result_format=%a %B %d %H:%M:%S UTC %Y
      Log      ${future}      console=yes