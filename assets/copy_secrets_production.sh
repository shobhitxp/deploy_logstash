if [ -d "secrets" ]; then rm -Rf secrets; fi
mkdir secrets
cp ../../IAC_secrets/production/* -r secrets
