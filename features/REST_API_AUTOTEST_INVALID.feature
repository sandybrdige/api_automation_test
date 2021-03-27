Feature: REST API ILLEGAL TESTING
  Scenario Outline: for rest api illegal
    Given I hava a REST API with a invalid parm
    When I Input the invalid <parameters>
    Then the response is expect

   Examples: different invalid parameters
     |parameters|
     |{"instrument_name":"ET_CRO","timeframe":"5m"}|
     |{"instrument_name":"","timeframe":"5m"}|
     |{"instrument_name":"","timeframe":""}|
     |{"instrument_name":"ETH_CRO","timeframe":"56m"}|
     |{"instrument_name":"ET_CRO","timeframe":"56m"}|
     |{"instrument_name":null,"timeframe":"5m"}|
     |{"instrument_name":"ETH_CRO","timeframe":null}|
     |{"instrument_name":null,"timeframe":null}|