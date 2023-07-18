from flask import Flask, request, render_template, jsonify
import yfinance as yf

# Function for pulling the stock quote
def display_quote(request):
	# get a stock ticker symbol from the query string
	# default to AAPL
	symbol = request.args.get('symbol', default="AAPL")

	# pull the stock quote
	quote = yf.Ticker(symbol)

	#return the object via the HTTP Response
	return jsonify(quote.info)