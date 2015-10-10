from firebase import firebase
#firebase = firebase.FirebaseApplication('https://blinding-fire-1196.firebaseio.com', None)
#result = firebase.get('/username', None)
#print (result)
firebase_obj = firebase.FirebaseApplication('https://blinding-fire-1196.firebaseio.com', None)
#write basic profile data of given username to database
def write_basic_profile_to_db(username, user_data):	
	result = firebase_obj.put(url='/profile_data', name=username,data=user_data)
	#result=firebase.post('test/1',{'name':'jack','age':'100'})
	#result = firebase.get('/username', None)

#get all profile info base on given username
def fetch_basic_profile_by_username(username):
	return firebase_obj.get('/profile_data', username)

#check if a user exists by username
def does_user_exist(username):
	profile = firebase_obj.get('/profile_data', username)
	if(profile == None):
		return False
	else:
		return True

#write user auth to database
def write_user_auth_to_db(username, token):
	if(not does_user_exist(username)):
		result = firebase_obj.put(url='/user_auth', name=username,data=token)
		return True
	else:
		return False

#get token by given username
def fetch_token_by_username(username):
	return firebase_obj.get('/user_auth', username)
