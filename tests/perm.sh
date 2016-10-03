#!/bin/bash
# check permission of /etc/ssmtp/ssmtp.conf
# returns an exit code of 0 (success) or 1 (failure)

DESIRED_PERMISSIONS="640 mail-user"
REAL_PERMISSIONS=$(stat -c "%a %G" /etc/ssmtp/ssmtp.conf)

[ "$DESIRED_PERMISSIONS" = "$REAL_PERMISSIONS" ]
