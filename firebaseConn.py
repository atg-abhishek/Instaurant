from firebase import firebase
#firebase = firebase.FirebaseApplication('https://blinding-fire-1196.firebaseio.com', None)
#result = firebase.get('/username', None)
#print (result)

def write_basic_profile_to_db(username, user_data):
	firebase = firebase.FirebaseApplication('https://blinding-fire-1196.firebaseio.com', None)
	# new_user = {"media": 113, "followed_by": 49, "website": "", "bio": "Individual Contributor", "follows": 479,"full_name": "Jessica Han", "profile_picture": "https://igcdn-photos-h-a.akamaihd.net/hphotos-ak-xta1/t51.2885-19/1739116_551021075030607_1017062428_a.jpg"}
	result = firebase.put(url='/username', name=username,data=user_data)
	#result=firebase.post('test/1',{'name':'jack','age':'100'})
	#result = firebase.get('/username', None)
