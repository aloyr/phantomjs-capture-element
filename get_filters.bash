#!/bin/bash
dia="deliverables/`date "+%Y%m%d-%H%M%S-"`"
mkdir deliverables 2> /dev/null

function callPhantom() {
  phantomjs test.js $URL $BLOCK $FILE
}

URL="http://www.hidglobal.com/products/card-printers/fargo"
BLOCK="block-hid-custom-product-filter"
FILE="$dia-fargo-card-printers"
callPhantom

URL="http://www.hidglobal.com/product-display/cards-and-credentials"
BLOCK="block-views-exp-product-display-page"
FILE="$dia-cards-and-credentials"
callPhantom
