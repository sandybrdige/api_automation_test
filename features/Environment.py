# -*- coding: utf-8 -*


def before_feature(context,url):
    url="https://api.crypto.com/v2/public/get-candlestick"
    wssurl="wss://stream.crypto.com/v2/market"
    setattr(context,"url",url)
    setattr(context,"wssurl",wssurl)