#!/bin/bash
dia="deliverables/`date "+%Y%m%d-%H%M%S-"`"
mkdir deliverables 2> /dev/null

function callPhantom() {
  phantomjs test.js $URL $BLOCK $FILE
}

URL="http://rs-dev.hidglobal.com/products/card-printers/fargo"
BLOCK="block-hid-custom-product-filter"
FILE="$dia-fargo-card-printers"
callPhantom

URL="http://rs-dev.hidglobal.com/product-display/cards-and-credentials"
BLOCK="block-views-exp-product-display-page"
FILE="$dia-cards-and-credentials"
callPhantom

URL="http://rs-dev.hidglobal.com/products/rfid-tags/identification-technologies"
BLOCK="block-hid-custom-product-filter"
FILE="$dia-identification-technologies"
callPhantom

URL="http://rs-dev.hidglobal.com/partners"
BLOCK="block-hid-partner-dir-partner-dir-filter"
FILE="$dia-partners"
callPhantom

URL="http://rs-dev.hidglobal.com/documents"
BLOCK="block-hid-document-widgets-doc-filter-selective"
FILE="$dia-documents"
callPhantom

