#!/usr/bin/env hy

;; snippet by HN user volent:

(import [flask [Flask]])
(import os)

(setv port (int (os.environ.get "PORT" 5000)))

(setv app (Flask "Flask test"))
(with-decorator (app.route "/")
  (defn index []
    "Hello World !"))
