Feature: WEBSOCKET API testing
  Scenario Outline: For websocket api testing
    Given I hava a WEBSOKCET API
    When I reg <looptime> and <parm>
    Then the websocket response is true

   Examples: different valid parm
    |looptime|parm|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": ["book.ETH_CRO.150"]},"nonce": 1587523073344}|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": ["book.ETH_CRO.10"]},"nonce": 1587523073344}|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": ["book.BTC_USDT.10"]},"nonce": 1587523073344}|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": ["book.BTC_USDT.150"]},"nonce": 1587523073344}|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": ["book.BTC_USDT.9"]},"nonce": 1587523073344}|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": ["book.BTC_USDT.15"]},"nonce": 1587523073344}|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": ["book.BTC_USDT.153"]},"nonce": 1587523073344}|