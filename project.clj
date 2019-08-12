(defproject kashimashi "0.1.0-SNAPSHOT"
  :description "this space intentionally left blank"
  :url "https://github.com/cuteasheckclub/kashimashi"
  :license {:name "EPL-2.0 OR GPL-2.0-or-later WITH Classpath-exception-2.0"
            :url "https://www.eclipse.org/legal/epl-2.0/"}
  :dependencies [[org.clojure/clojure "1.10.0"]
                 [discord.clj "2.0.0"]]
  :repl-options {:init-ns kashimashi.core}
  :min-lein-version "2.0.0"
  :uberjar-name "kashimashi.jar"
  :profiles {:production {:env {:production true}}})
