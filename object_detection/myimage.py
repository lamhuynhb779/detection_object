class MyImage:
	def __init__(self):
		self.id = 0
		self.path = ""
		self.date = ""
		print('Khoi tao doi tuong image')

	def getId(self):
		return self.id

	def setId(self, myid):
		self.id = myid

	def getPath(self):
		return self.path

	def setPath(self, path):
		self.path = path

	def	getDate(self):
		return self.date

	def setDate(self, mydate):
		self.date = mydate