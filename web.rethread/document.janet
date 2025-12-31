(import janet-html :as html)

(def head
  [:head
   [:link {:rel "stylesheet"
           :href "style.css"}]
   [:title "home"]])

(def form
  [:form {:method "GET"
          :action "https://duckduckgo.com"}
   [:input {:class "searx"
            :type "text"
            :name "q"
            :autofocus ""}]
   [:input {:type "submit"
            :value "&#9784;"}]])


(def links [[:youtube "https://youtube.com"]
            [:github "https://github.com"]])

(def shortcuts
  [:nav {:id "shortcuts"}
   ;(map
     (fn [link]
       (let [name (-> (link 0) string)
             url (link 1)]
         [:a {:href url} name]))
     links)])

(def body
  [:body
   [:main
    [:h1 "Rethread"]
    form
    shortcuts
    [:script {:src "redirect.js"}]
    ]])

(defn render
  []
  (html/encode
   (html/doctype :html5)
   [:html {:lang "en"}
    head
    body]))
