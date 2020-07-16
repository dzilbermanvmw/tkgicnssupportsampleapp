export BUCKET=velero
export REGION=minio
./velero install  \
  --provider aws \
  --bucket $BUCKET \
  --secret-file ./credentials \
  --backup-location-config region=$REGION,s3ForcePathStyle="true",s3Url=http://192.168.74.104 \
  --snapshot-location-config region=$REGION \
  --plugins velero/velero-plugin-for-aws:v1.1.0
