# -*- coding: utf-8 -*

from utils import http_util
from behave import *
import json

@Given('I hava a REST API which is GET-METHODS')
def step_impl(context):
    pass

@When('I Input {parameters}')
def step_impl(context,parameters):
    context.parameters = parameters

@Then('the response is true')
def step_impl(context):
    try:
        parm=json.loads(context.parameters)
        resp = http_util(url=context.url,parm=parm)
        assert resp.get("code")==0
    except:
        raise