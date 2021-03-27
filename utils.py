import websocket
import json
import time
import requests

def ws_util(wss,looptime,parmeters):
  ws = websocket.create_connection(wss,timeout=3)
  statuscode = ws.getstatus()
  try:
    time.sleep(1)
    parm = json.dumps(parmeters)
    ws.send(parm)
    resplist = []
    count=0
    while True:
      res = ws.recv()
      resdict = json.loads(res)
      if resdict.get("method") =="public/heartbeat":
        ws.send(json.dumps({"id":resdict.get("id"),"method": "public/respond-heartbeat"}))##keep ws alive
      elif resdict.get("result") is not None:
        resplist.append(resdict)##get the valid respone
        count+=1
      if count==looptime:#ws looptime to break
        break
    return {"statuscode":statuscode,"data":resplist}
  except websocket.WebSocketTimeoutException:
    return {"statuscode":statuscode,"code":-1,"msg":"WebSocketTimeoutException"}
  finally:
    ws.close()

def http_util(url,parm):
  try:
    resp = requests.get(url=url, params=parm)
    timeframe = parm.get("timeframe")
    instrument_name = parm.get("instrument_name")
    if resp.status_code!=200:
      return {"code":-1,"msg":"badrequest"}
    if resp.status_code==200:
      if resp.json().get("code") ==0 and resp.json().get("result").get("interval") ==timeframe\
        and resp.json().get("result").get("instrument_name")==instrument_name \
        and resp.json().get("result").get("data") !=None:
          return {"code":0,"msg":"success"}
      else:
        return {"code":-1,"msg":"invalid_response"}
  except :
    return {"code":-1,"msg":"exception"}



if __name__=="__main__":
  pass