from flask import Flask, render_template, request, jsonify, redirect, url_for


app = Flask(__name__)

# Simulating a database of users
users = [
    {'name': 'John Doe', 'age': 30},
    {'name': 'Jane Doe', 'age': 25}
]

@app.route('/')
def index():
    """
    Render a template showing all users.
    """
    return render_template('index.html', users=users)

@app.route('/users', methods=['POST'])
def add_user():
    """
    Add a new user to our 'database'.
    """
    user = {'name': request.form.get('name'), 'age': request.form.get('age')}
    users.append(user)
    # Redirect to the home page after form submission
    return redirect(url_for('index'))


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
