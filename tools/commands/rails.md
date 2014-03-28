



metric_fu



rubocop


brakeman



get all the rb files. erb files, css files for finding duplication and for keywork analysis

git ls-files - "*.rb"



git ls-files - "*.rb" | xargs cat | sort | uniq -c | wc -l


