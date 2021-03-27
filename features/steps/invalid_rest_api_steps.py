# -*- coding: utf-8 -*

import requests
from behave import *
import json
from utils import http_util

@Given('I hava a REST API with a invalid parm')
def step_impl(context):
    pass

@When('I Input the invalid {parameters}')
def step_impl(context,parameters):
    context.parameters = parameters

@Then('the response is expect')
def step_impl(context):
    try:
        parm=json.loads(context.parameters)
        resp = http_util(url=context.url, parm=parm)
        assert resp.get("code") == -1
    except:
        raise