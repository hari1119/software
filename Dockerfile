FROM odoo:18.0

ENV ADDON_PATH=/opt

COPY odoo.conf /etc/odoo/odoo.conf
COPY extended_addons/ ${ADDON_PATH}/extended_addons/

COPY requirements.txt requirements.txt
CMD ["odoo", "-d", "odoo-db"]
