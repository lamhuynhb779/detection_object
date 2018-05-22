import glob, shutil

source = 'E:\\DoAnTruyVan_DetectObject\\object_detection\\'
dest = 'E:\\DoAnTruyVan_DetectObject\\object_detection\\test_images\\inserted\\'

def moveFile(file):
	global source
	global dest
	shutil.move(source + file, dest)

def countFile():
	path = 'E:\\DoAnTruyVan_DetectObject\\object_detection\\test_images\\'
	typefile = ['*.jpg', '*.png']
	count = 0
	for tf in typefile:
		files = glob.glob(path+tf)
		count += len(files)
	return count