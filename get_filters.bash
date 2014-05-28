#!/bin/bash
dia="deliverables/`date "+%Y%m%d-%H%M%S-"`"
mkdir deliverables 2> /dev/null

function callPhantom() {
  phantomjs idGetter.js $URL $BLOCK $FILE
}

URL="http://rs-dev.hidglobal.com/products/card-printers/fargo"
BLOCK="block-hid-custom-product-filter"
FILE="$dia-fargo-card-printers"
callPhantom
URL="http://rs-dev.hidglobal.pt/products/card-printers/fargo" 
FILE="$dia-fargo-card-printers-pt"
callPhantom

URL="http://rs-dev.hidglobal.com/product-display/cards-and-credentials"
BLOCK="block-views-exp-product-display-page"
FILE="$dia-cards-and-credentials"
callPhantom
URL="http://rs-dev.hidglobal.pt/product-display/cards-and-credentials"
FILE="$dia-cards-and-credentials-pt"
callPhantom


URL="http://rs-dev.hidglobal.com/products/rfid-tags/identification-technologies"
BLOCK="block-hid-custom-product-filter"
FILE="$dia-identification-technologies"
callPhantom
URL="http://rs-dev.hidglobal.pt/products/rfid-tags/identification-technologies" 
FILE="$dia-identification-technologies"
callPhantom

URL="http://rs-dev.hidglobal.com/partners"
BLOCK="block-hid-partner-dir-partner-dir-filter"
FILE="$dia-partners"
callPhantom
URL="http://rs-dev.hidglobal.pt/partners"
FILE="$dia-partners-pt"
callPhantom

URL="http://rs-dev.hidglobal.com/documents"
BLOCK="block-hid-document-widgets-doc-filter-selective"
FILE="$dia-documents"
callPhantom
URL="http://rs-dev.hidglobal.pt/documents"
FILE="$dia-documents-pt"
callPhantom

URL="http://rs-dev.hidglobal.com/drivers"
BLOCK="block-hid-selective-forms-drivers-custom-search"
FILE="$dia-drivers"
callPhantom
URL="http://rs-dev.hidglobal.pt/drivers"
FILE="$dia-drivers"
callPhantom

URL="http://rs-dev.hidglobal.com/partners/genuine-hid-technology"
BLOCK="block-views-672fc2997a191dea03bac3d4b06a2bf2"
FILE="$dia-genuine-hid-technology"
callPhantom
URL="http://rs-dev.hidglobal.pt/partners/genuine-hid-technology"
FILE="$dia-genuine-hid-technology-pt"
callPhantom

URL="http://rs-dev.hidglobal.com/tracking/assets"
BLOCK="block-hid-download-tracking-widgets-download-tracking-widgets"
FILE="$dia-assets"
callPhantom
URL="http://rs-dev.hidglobal.pt/tracking/assets"
FILE="$dia-assets-pt"
callPhantom

URL="http://rs-dev.hidglobal.com/videos"
BLOCK="block-views-exp-videos-page"
FILE="$dia-videos"
callPhantom
URL="http://rs-dev.hidglobal.pt/videos"
FILE="$dia-videos-pt"
callPhantom

URL="http://rs-dev.hidglobal.com/case-studies"
BLOCK="block-views-exp-case-studies-page"
FILE="$dia-case-studies"
callPhantom
URL="http://rs-dev.hidglobal.pt/case-studies"
FILE="$dia-case-studies-pt"
callPhantom

URL="http://rs-dev.hidglobal.com/worldwide-sales-tool"
BLOCK="block-views-exp-worldwide-sales-tool-page"
FILE="$dia-worldwide-sales-tool"
callPhantom
URL="http://rs-dev.hidglobal.pt/worldwide-sales-tool"
FILE="$dia-worldwide-sales-tool-pt"
callPhantom

URL="http://rs-dev.hidglobal.com/customer-service"
BLOCK="block-views-exp-customer-service-tool-page"
FILE="$dia-customer-service"
callPhantom
URL="http://rs-dev.hidglobal.pt/customer-service"
FILE="$dia-customer-service-pt"
callPhantom

URL="http://rs-dev.hidglobal.com/careers"
BLOCK="block-views-exp-careers-page"
FILE="$dia-careers"
callPhantom
URL="http://rs-dev.hidglobal.pt/careers"
FILE="$dia-careers-pt"
callPhantom

URL="http://rs-dev.hidglobal.com/products/readers/omnikey"
BLOCK="block-hid-custom-product-filter"
FILE="$dia-omnikey"
callPhantom
URL="http://rs-dev.hidglobal.pt/products/readers/omnikey"
FILE="$dia-omnikey-pt"
callPhantom

