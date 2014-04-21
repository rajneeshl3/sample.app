require File.expand_path(File.dirname(__FILE__) + '/tasks/env')

task :default 

namespace :docker do
	desc "build the docker image"
	task :build do
		run_command "docker build -t #{DOCKER_TAG} ."
	end

	desc "login to the docker registry"
	task :login do
		run_command "docker login --username=#{DOCKER_USERNAME} --password=#{DOCKER_PASSWORD} --email=#{DOCKER_EMAIL} #{DOCKER_REGISTRY}"
	end

	desc "pushes the content to the docker registry"
	task :push => :login do
		run_command "docker push #{DOCKER_TAG} ."
	end

	desc "write tag to file"
	task :write_tag do
		run_command "echo #{DOCKER_TAG} > sample.app_tag.txt"
	end
end

def run_command command
	puts command
	system command
end

