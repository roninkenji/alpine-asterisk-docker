#/bin/sh

if [ -d /etc/asterisk/samples ]; then
  mkdir /etc/asterisk/samples
  cp -r /etc/asterisk-samples/* /etc/asterisk/samples
fi

exec /usr/sbin/asterisk -c

