import configdb as config
import json

connection = config.getConnection()
print ("Kết nối db thành công!!")
# try:
# 	with connection.cursor() as cursor:
# 	# SQL 
# 		sql = "SELECT * FROM member"
# 	# Thực thi câu lệnh truy vấn (Execute Query).
# 		cursor.execute(sql)
# 		# print ("cursor.description: ", cursor.description)
# 		# print()
# 		for row in cursor:
# 			print(row)
# finally:
# # Đóng kết nối (Close connection)
# connection.close() 

def parseJSON(myjson):
	data = json.loads(myjson)
	images = data['images']
	
	for  in xrange(1,10):
		pass

def layIdLonNhat(table_name):
	global connection
	try:
		with connection.cursor() as cursor:
			sql = "SELECT id FROM "+table_name+" ORDER BY id DESC LIMIT 1"
			cursor.execute(sql)
			for row in cursor:
				return row
	except Exception as e:
		print("I/O error({0}): {1}".format(e.errno, e.strerror))
		# connection.close()
	return 1

def themDuLieuBangImage():
	global connection
	try:
		with connection.cursor() as cursor:
			sql = "INSERT INTO image VALUES ("+
			cursor.execute(sql)
			for row in cursor:
				return row
	except Exception as e:
		print("I/O error({0}): {1}".format(e.errno, e.strerror))