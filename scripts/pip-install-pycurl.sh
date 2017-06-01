pip install -U pip
pip install six

if [ "$(curl --version | grep NSS 2>/dev/null)" ]; then
    pip install --compile --install-option="--with-nss" pycurl
else
    pip install --compile --install-option="--with-openssl" pycurl
fi
