=begin
#Triglav API

#Triglav API Reference

OpenAPI spec version: 1.0.0
Contact: triglav_admin_my@dena.jp
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for TriglavClient::JobMessagesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'JobMessagesApi' do
  before do
    # run before each test
    @instance = TriglavClient::JobMessagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobMessagesApi' do
    it 'should create an instact of JobMessagesApi' do
      expect(@instance).to be_instance_of(TriglavClient::JobMessagesApi)
    end
  end

  # unit tests for fetch_job_messages
  # 
  # Fetch Job messages
  # @param offset Offset (Greater than or equal to) ID for Messages to fetch from
  # @param job_id Job ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of limits
  # @return [Array<JobMessageEachResponse>]
  describe 'fetch_job_messages test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_last_job_message_id
  # 
  # Get the current last message id which would be used as a first offset to fetch messages
  # @param [Hash] opts the optional parameters
  # @return [LastJobMessageIdResponse]
  describe 'get_last_job_message_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
