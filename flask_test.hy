#!/usr/bin/env hy

;; snippet by HN user volent:

(import [flask [Flask render_template request]])
(import os)

(setv port (int (os.environ.get "PORT" 5000)))

(setv app (Flask "Flask test" :static_folder "./static" :static_url_path "/"))

(with-decorator (app.route "/")
  (defn index []
    (render_template "template1.j2")))

(with-decorator (app.route "/response" :methods ["POST"])
  (defn response []
    (setv name (request.form.get "name"))
    (print name)
    (render_template "template1.j2" :name name)))