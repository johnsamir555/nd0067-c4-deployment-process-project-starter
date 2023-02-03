cd www
eb init $EB_APP --platform node.js --region $AWS_DEFAULT_REGION
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE AWS_BUCKET=$AWS_BUCKET JWT_SECRET=$JWT_SECRET -e $EB_ENV
eb list
eb use $EB_ENV
eb deploy $EB_ENV --artifact "Archive.zip" 
