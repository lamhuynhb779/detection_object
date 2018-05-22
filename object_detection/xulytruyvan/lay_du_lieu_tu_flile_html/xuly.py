from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
from flask import Flask, render_template, request

app = Flask(__name__)

def get_data():
	response = request.form['text']
	return response

def remove_stopword():
	content = get_data()
	stop_words = set(stopwords.words('english'))
	word_tokens = word_tokenize(content)
	filtered_sentence = []

	for w in word_tokens:
		if w not in stop_words:
			filtered_sentence.append(w)
	return filtered_sentence

@app.route('/result',methods = ['POST', 'GET'])
def result():
	if request.method == 'POST':
		return render_template("result.html",result = remove_stopword())

if __name__ == '__main__':
	app.run(debug = True)
