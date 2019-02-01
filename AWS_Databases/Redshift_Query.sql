CREATE TABLE quake 
(
  qtime          VARCHAR(255) NOT NULL,
  latitude      VARCHAR(255) NOT NULL,
  longitude     VARCHAR(255) NOT NULL,
  depth         VARCHAR(255) NOT NULL,
  mag           VARCHAR(255) NOT NULL,
  magType       VARCHAR(255) NOT NULL,
  nst           VARCHAR(255) NOT NULL,
  gap            VARCHAR(255) NOT NULL,
  dmin          VARCHAR(255) NOT NULL,
  rms           VARCHAR(255) NOT NULL,
  net           VARCHAR(255) NOT NULL,
  id            VARCHAR(255) NOT NULL,
  updated       VARCHAR(255) NOT NULL,
  place         VARCHAR(255) NOT NULL,
  type          VARCHAR(255)  NOT NULL,
  horizontalerror VARCHAR(255) NOT NULL,
  depthError    VARCHAR(255)  NOT NULL,
  magError      VARCHAR(255) NOT NULL,
  magNst        VARCHAR(255)  NOT NULL,
  qstatus        VARCHAR(255) NOT NULL,
  locationsource VARCHAR(255) NOT NULL,
  magsource     VARCHAR(255) NOT NULL
);




cat quake.dat | awk '{printf "(\047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t  \047%5s\047,\t \047%5s\047),\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22}'





COPY quake
FROM 'https://s3.amazonaws.com/earthquake-redshift-data-warehouse/4.5_month.csv'
CREDENTIALS 'arn:aws:iam::261107729676:role/s3-redshift-analytics'

copy quake from 'https://s3.amazonaws.com/earthquake-redshift-data-warehouse/4.5_month.csv' 
credentials 'aws_iam_role=arn:aws:iam::261107729676:role/s3-redshift-analytics'
region 'us-east-1'
csv
IGNOREHEADER 1;


copy quake from 's3.amazonaws.com/earthquake-redshift-data-warehouse/4.5_month.csv' 
credentials 
'aws_iam_role=arn:aws:iam::261107729676:role/s3-redshift-analytics';

copy quake from 's3.amazonaws.com/earthquake-redshift-data-warehouse/4.5_month.csv';




copy quake from 's3.amazonaws.com/earthquake-redshift-data-warehouse/4.5_month.csv' 
credentials 'aws_access_key_id=AKIAI22RHV6UEYQQ3OOA;aws_secret_access_key=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' 
csv
null as '\000';

insert into quake values
(),
