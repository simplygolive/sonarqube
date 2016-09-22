#!/usr/bin/env bash
HOST=$1
STORE_PATH="$($2-/etc/ssl/certs/java/cacerts)"
pushd /opt/sonar-scanner
  openssl s_client -connect "$HOST:443" </dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > "$HOST.cert"
  sudo keytool -import -noprompt -trustcacerts -alias $HOST -file "$HOST.cert" -keystore "$STORE_PATH" -storepass changeit
  sudo keytool -list -v -keystore "$STORE_PATH" -storepass changeit -alias $HOST
popd
