#!/bin/bash -x

ASKNOT_LOCALE_DIR=${ASKNOT_LOCALE_DIR:-l10n/fedora/locale}

for locale in $ASKNOT_LOCALE_DIR/*.po; do
    echo $locale;
    locale=$(basename $locale)
    locale=${locale%.po};
    mkdir -p $ASKNOT_LOCALE_DIR/$locale/LC_MESSAGES/;
    msgfmt -o $ASKNOT_LOCALE_DIR/$locale/LC_MESSAGES/asknot-ng.mo $ASKNOT_LOCALE_DIR/$locale.po;
done

