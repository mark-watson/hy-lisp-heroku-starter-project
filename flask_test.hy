#!/usr/bin/env hy

;; snippet by HN user volent:

(print "*********** entered flasktest.hy")

(import [flask [Flask]])
(import os)

(setv port (int (os.environ.get "PORT" 5000)))

(print "*********** PORT=")
(print port)

(setv app (Flask "Flask test"))
(with-decorator (app.route "/")
  (defn index []
    "Hello World !"))

(defn run []
  (app.run :port port))

