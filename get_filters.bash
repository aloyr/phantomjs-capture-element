#!/bin/bash
dia="deliverables/`date "+%Y%m%d-%H%M%S-"`"
urlproden="http://www.hidglobal.com/"
urlprodpt="http://www.hidglobal.pt/"
urldeven="http://rs-dev.hidglobal.com/"
urldevpt="http://rs-dev.hidglobal.pt/"
mkdir deliverables 2> /dev/null

function callPhantom() {
  phantomjs idGetter.js $urlproden$URL $BLOCK $dia-chrome-$FILE-prod
  phantomjs idGetter.js $urlprodpt$URL $BLOCK $dia-chrome-$FILE-prod-pt
  phantomjs idGetter.js $urldeven$URL $BLOCK $dia-chrome-$FILE-dev
  phantomjs idGetter.js $urldevpt$URL $BLOCK $dia-chrome-$FILE-dev-pt
  slimerjs/slimerjs idGetter.js $urlproden$URL $BLOCK $dia-firefox-$FILE-prod
  slimerjs/slimerjs idGetter.js $urlprodpt$URL $BLOCK $dia-firefox-$FILE-prod-pt
  slimerjs/slimerjs idGetter.js $urldeven$URL $BLOCK $dia-firefox-$FILE-dev
  slimerjs/slimerjs idGetter.js $urldevpt$URL $BLOCK $dia-firefox-$FILE-dev-pt
}

URL="products/card-printers/fargo"
BLOCK="block-hid-custom-product-filter"
FILE="fargo-card-printers"
callPhantom

URL="product-display/cards-and-credentials"
BLOCK="block-views-exp-product-display-page"
FILE="cards-and-credentials"
callPhantom


URL="products/rfid-tags/identification-technologies"
BLOCK="block-hid-custom-product-filter"
FILE="identification-technologies"
callPhantom

URL="partners"
BLOCK="block-hid-partner-dir-partner-dir-filter"
FILE="partners"
callPhantom

URL="documents"
BLOCK="block-hid-document-widgets-doc-filter-selective"
FILE="documents"
callPhantom

URL="drivers"
BLOCK="block-hid-selective-forms-drivers-custom-search"
FILE="drivers"
callPhantom

URL="partners/genuine-hid-technology"
BLOCK="block-views-672fc2997a191dea03bac3d4b06a2bf2"
FILE="genuine-hid-technology"
callPhantom

URL="tracking/assets"
BLOCK="block-hid-download-tracking-widgets-download-tracking-widgets"
FILE="assets"
callPhantom

URL="videos"
BLOCK="block-views-exp-videos-page"
FILE="videos"
callPhantom

URL="case-studies"
BLOCK="block-views-exp-case-studies-page"
FILE="case-studies"
callPhantom

URL="worldwide-sales-tool"
BLOCK="block-views-exp-worldwide-sales-tool-page"
FILE="worldwide-sales-tool"
callPhantom

URL="customer-service"
BLOCK="block-views-exp-customer-service-tool-page"
FILE="customer-service"
callPhantom

URL="careers"
BLOCK="block-views-exp-careers-page"
FILE="careers"
callPhantom

URL="products/readers/omnikey"
BLOCK="block-hid-custom-product-filter"
FILE="omnikey"
callPhantom
