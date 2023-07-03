FROM vvakame/review:5.8

LABEL "com.github.actions.name"="Re:VIEW PDF Generator"
LABEL "com.github.actions.description"="builds PDF from Re:VIEW repository and uploads as Artifacts"
LABEL "com.github.actions.icon"="book"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/Nyoho/review-pdf-generator-action"
LABEL "homepage"="https://github.com/Nyoho/review-pdf-generator-action"
LABEL "maintainer"="Nyoho <algebraicallyClosedField@gmail.com>"

RUN apt-get update && apt-get install libmecab-dev

ADD entrypoint.sh /entrypoint.sh
ADD copy_build_file.rb /copy_build_file.rb
ENTRYPOINT ["/entrypoint.sh"]
