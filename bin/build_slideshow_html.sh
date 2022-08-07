ACTIVE="active"
HTML_CARROUSSEL=$(ls assets/realisations | while read file; do TITLE=$(echo -n $file | cut -d "." -f 2); echo -n "<div class=\"carousel-item text-shadow $ACTIVE\"><img src=\"/assets/realisations/$file\" class=\"d-block w-100\" alt=\"$TITLE\"><div class=\"carousel-caption\">$TITLE</div></div>"; ACTIVE=""; done);
HTML+="<!--CARROUSSEL_DEBUT-->$HTML_CARROUSSEL<!--CARROUSSEL_FIN-->"
sed -i -r "s|<!--CARROUSSEL_DEBUT-->.*<!--CARROUSSEL_FIN-->|$HTML|" index.html