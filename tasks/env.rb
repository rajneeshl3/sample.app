APP             = 'sample/app'
BUILD_NUMBER    = ENV["BUILD_NUMBER"] || 'latest'

DOCKER_REGISTRY = 'ec2-184-72-21-165.us-west-1.compute.amazonaws.com:5000'
DOCKER_USERNAME = ENV["DOCKER_USERNAME"] || "admin"
DOCKER_PASSWORD = ENV["DOCKER_PASSWORD"] || "password"
DOCKER_EMAIL    = ENV["DOCKER_EMAIL"]    || "docker@loyal3.com"
DOCKER_TAG      = "#{DOCKER_REGISTRY}/#{APP}:#{BUILD_NUMBER}"

