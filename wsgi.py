#from app.main import app
#if __name__ == "__main__":
#  app.run()

print("in wsgi.py")
import hy
print("in wsgi.py after import hy")
import flask_test
from flask_test import app
print("in wsgi.py after import hy")
print(dir(app))

#app.run()