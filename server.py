from flask import Flask, request
import simplejson as json
app = Flask(__name__)

@app.route('/')
def hello():
	return 'Welcome to Instaurant'

@app.route('/login', methods=['POST'])
def login():
	username = request.form['username']
	token = request.form['token']
	login_details = {'username' : username, 'token' : token}
	with open('./datafiles/'+username+'_login.json', 'w') as outfile:
		json.dump(login_details, outfile)
	return "The file has been saved"
if __name__ == '__main__':
	app.run(debug=True)
