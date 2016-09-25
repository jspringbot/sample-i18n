*** Settings ***
Library     JSpringBotGlobal
Library     BuiltIn

*** Test Cases ***
i18n Usage
    Set i18n Locale         en
    ${loginTitle}=          Get i18n Message    login.page.title
    ${loginUserName}=       Get i18n Message    login.field.username
    ${loginPassword}=       Get i18n Message    login.field.password
    ${jaLoginPassword}=     Get i18n Message    login.field.password    ja
    ${displayLanguage}=     Get I18n Display Language
    ${displayCountry}=      Get I18n Locale Country
    ${localeLanguage}=      Get I18n Locale Language

i18n Var Support
    ${i18n}=    Create i18n Object
    Set i18n Locale     en
    Log     ${i18n.get('login.page.title')}
    Log     ${i18n.get('login.field.username')}
    Log     ${i18n.get('login.field.password')}
    Log     ${i18n.getDisplayLanguage()}
    Log     ${i18n.getDisplayCountry()}
    # Log     ${i18n.getLocaleLanguage()}
    Set i18n Locale     ja
    Log     ${i18n.get('login.page.title')}
    Log     ${i18n.get('login.field.username')}
    Log     ${i18n.get('login.field.password')}
    Log     ${i18n.getDisplayLanguage()}
    Log     ${i18n.getDisplayCountry()}
    # Log     ${i18n.getLocaleLanguage()}
    Set i18n Locale     es_PR
    Log     ${i18n.get('login.page.title')}
    Log     ${i18n.get('login.field.username')}
    Log     ${i18n.get('login.field.password')}
    Log     ${i18n.getDisplayLanguage()}
    Log     ${i18n.getDisplayCountry()}
    # Log     ${i18n.getLocaleLanguage()}

i18n EL Support
    ${i18n}=    Create i18n Object
    Set i18n Locale     en
    EL Add Variable     loginTitle          $[i18n:login.page.title]
    EL Add Variable     loginUsername       $[i18n:login.field.username]
    EL Add Variable     loginPassword       $[i18n:login.field.password]
    EL Add Variable     displayLanguage     $[i18n:locale:language]
    EL Add Variable     displayCountry      $[i18n:locale:displayCountry]
    EL Add Variable     displayLanguage     $[i18n:locale:displayLanguage]
    EL Add Variable     esPRLoginTitle      $[i18n:es_PR:login.page.title]
    EL Add Variable     esPRLoginUserName   $[i18n:es_PR:login.field.username]
    EL Add Variable     esPRLoginPassword   $[i18n:es_PR:login.field.password]
    EL Add Variable     jaLoginTitle        $[i18n:ja:login.page.title]
    EL Add Variable     jaLoginUserName     $[i18n:ja:login.field.username]
    EL Add Variable     jaLoginPassword     $[i18n:ja:login.field.password]