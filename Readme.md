PHP 7.0 Alpine loaded in with PHPCS including the Magento ECG Coding Standards definition.

To run, simply map your local path when starting the container.

For Magento 1 ECG Standards, run:

`docker run -v /root/to/local/folder/:/scripts/ phpcs --standard=Ecg /scripts/`

For Magento 2 ECG Standards, run:

`docker run -v /root/to/local/folder/:/scripts/ phpcs --standard=EcgM2 /scripts/`