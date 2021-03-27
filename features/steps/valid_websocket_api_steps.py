# -*- coding: utf-8 -*

from behave import *
from utils import ws_util
import json

@Given('I hava a WEBSOKCET API')
def step_impl(context):
    pass

@When('I reg {looptime} and {parm}')
def step_impl(context,looptime,parm):
    context.parameters = parm
    context.looptime=looptime

@Then('the websocket response is true')
def step_impl(context):
    try:
        parm=json.loads(context.parameters)
        looptime=int(context.looptime)
        wssresp=ws_util(wss=context.wssurl,looptime=looptime,parmeters=parm)
        print(wssresp)
        assert wssresp.get("statuscode") ==101 and len(wssresp.get("data")) == looptime
    except :
        raise