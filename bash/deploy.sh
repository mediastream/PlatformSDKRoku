function upload_to_s3 {
  path=$1
  bucket=$2
  cacheControl=$3
  if [ -z "${cacheControl}" ]; then
    cacheControl='immutable'
  fi
  echo "UPLOADING FROM $path TO $bucket"
  aws s3 sync --acl public-read --cache-control "${cacheControl}" --region us-east-1 $path s3://${bucket}/
}

function copy_to_s3 {
  path=$1
  bucket=$2
  cacheControl=$3
  if [ -z "${cacheControl}" ]; then
    cacheControl='immutable'
  fi
  echo "UPLOADING FROM $path TO $bucket"
  aws s3 cp --acl public-read --cache-control "${cacheControl}" --region us-east-1 $path s3://${bucket}/
}

export S3_BUCKET="platform.s-mdstrm.com"
export ENV_PATH="/roku_sdk"

export VERSION=$(echo -n v$(cat ./package.json | grep "\"version\"" | awk -F '"' '{print $4}'))

if [ "${TAG}" != "" ]; then
  export VERSION=${TAG##*/}
fi

export BASE_PATH="${ENV_PATH}/${VERSION}"

echo "**** DEPLOYING TO ${BASE_PATH} ****"

upload_to_s3 ./package "${S3_BUCKET}${BASE_PATH}" && \
copy_to_s3 ./package/MediaStreamPlayer.pkg "${S3_BUCKET}${ENV_PATH}" 'no-cache,max-age=300,s-maxage=300,must-revalidate'
