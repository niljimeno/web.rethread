(import janet-css/css)

(defn render
  []
  (css/into-css
   [:body
    [:font-family "Helvetica, Verdana, Arial, 'Liberation Sans', FreeSans, sans-serif"]
    [:height "400px"]
    [:max-height "80%"]
    [:align-content "center"]
    [:text-align "center"]
    [:font-size "1.2em"]
    [:background-color "#ffffea"]]

   [:main
    [:form
     [:width "600px"]
     [:max-width "100%"]
     [:margin "0 auto"]
     [:margin-bottom "1em"]
     ["input"
      [:padding "0.4em 0.6em"]]
     ["input[type=text]"
      [:width "80%"]]
     ["input[type=submit]"
      [:background-color "#eaffff"]]]
    ["#shortcuts"
     [:display "flex"]
     [:justify-content "center"]
     [:gap "1em"]]]

   [:h1
    [:font-size "4em"]
    [:margin-bottom "0.1em"]
    [:font-weight "normal"]]

   [:input
    [:font-size "1em"]
    [:box-sizing "border-box"]
    [:padding "0.4em"]
    [:border-radius "0"]
    [:border "black 1px solid"]]

   ["input[type=text]:focus"
    [:outline "0 !important"]]

   [:a
    [:color "rgb(0,102,204)"]]
   ))
