Feature: WEBSOCKET API testing
  Scenario Outline: For websocket api testing
    Given I hava a WEBSOKCET API with a invalid parm
    When I reg invalid <looptime> and <parm>
    Then the websocket response is expect

   Examples: different invalid parm
    |looptime|parm|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": ["book.ETh_CRO.150"]},"nonce": 1587523073344}|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": ["book.ETa_CRO.10"]},"nonce": 1587523073344}|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": []},"nonce": 1587523073344}|
    |4       |{"id": 11,"method": "subscribe","params": {"channels": null},"nonce": 1587523073344}|