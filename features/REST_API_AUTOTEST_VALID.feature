Feature: REST API testing
  Scenario Outline: for rest api testing
    Given I hava a REST API which is GET-METHODS
    When I Input <parameters>
    Then the response is true

   Examples: different valid instrument_name
     |parameters|
     |{"instrument_name":"BTC_USDT","timeframe":"5m"}|
     |{"instrument_name":"ETH_CRO","timeframe":"5m"}|

   Examples: different valid timeframe
     |parameters|
     |{"instrument_name":"ETH_CRO","timeframe":"1m"}|
     |{"instrument_name":"ETH_CRO","timeframe":"5m"}|
     |{"instrument_name":"ETH_CRO","timeframe":"15m"}|
     |{"instrument_name":"ETH_CRO","timeframe":"30m"}|
     |{"instrument_name":"ETH_CRO","timeframe":"1h"}|
     |{"instrument_name":"ETH_CRO","timeframe":"4h"}|
     |{"instrument_name":"ETH_CRO","timeframe":"6h"}|
     |{"instrument_name":"ETH_CRO","timeframe":"12h"}|
     |{"instrument_name":"ETH_CRO","timeframe":"1D"}|
     |{"instrument_name":"ETH_CRO","timeframe":"7D"}|
     |{"instrument_name":"ETH_CRO","timeframe":"14D"}|
     |{"instrument_name":"ETH_CRO","timeframe":"1M"}|
