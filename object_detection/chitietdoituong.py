class ChiTietDoiTuong:
	def __init__(self):
		self.id_object = 0
		self.id_image = 0
		self.soluong = 0
		print('Khoi tao doi tuong ctdt')

	def getIdObject(self):
		return self.id_object

	def setIdObject(self, myid):
		self.id_object = myid

	def getIdImage(self):
		return self.id_image

	def setIdImage(self, myid):
		self.id_image = myid

	def getSoLuong(self):
		return self.soluong

	def setSoLuong(self, soluong):
		self.soluong = soluong