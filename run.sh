#!/bin/bash
echo "HELLO WELCOME"
your_raw_images_bucket_name="dsce-sirish-ece"
your_processed_images_bucket_name="dsce-sirish-ece-processed"
echo
echo
echo "ENTER THE IMAGE NAME:"
read image_name
echo 
echo
python3 upload_to_s3.py -i $image_name -b $your_raw_images_bucket_name
echo 
echo
python3 index.py
echo 
echo
echo "ENTER THE PRCOESSED IMAGE NAME:"
read processed_image
echo 
echo
python3 url_gen.py -i $processed_image -b $your_processed_images_bucket_name