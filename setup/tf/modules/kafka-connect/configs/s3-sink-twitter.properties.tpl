#
# Copyright 2018 Confluent Inc.
#
# Licensed under the Confluent Community License (the "License"); you may not use
# this file except in compliance with the License.  You may obtain a copy of the
# License at
#
# http://www.confluent.io/confluent-community-license
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OF ANY KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations under the License.
#

name=s3-sink-twitter
connector.class=io.confluent.connect.s3.S3SinkConnector
tasks.max=1
topics=twitter

s3.region=ap-southeast-1
s3.bucket.name=gdelt-tharid
s3.part.size=5242880
flush.size=3

storage.class=io.confluent.connect.s3.storage.S3Storage
#format.class=io.confluent.connect.s3.format.avro.AvroFormat
format.class=io.confluent.connect.s3.format.json.JsonFormat
schema.generator.class=io.confluent.connect.storage.hive.schema.DefaultSchemaGenerator
partitioner.class=io.confluent.connect.storage.partitioner.DefaultPartitioner

schema.compatibility=NONE

#partition.field.name=
#partition.duration.ms=
#path.format=
#locale=
#timezone=