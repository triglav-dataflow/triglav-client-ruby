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

# Unit tests for TriglavClientBase::MessagesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MessagesApi' do
  before do
    # run before each test
    @instance = TriglavClientBase::MessagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessagesApi' do
    it 'should create an instact of MessagesApi' do
      expect(@instance).to be_instance_of(TriglavClientBase::MessagesApi)
    end
  end

  # unit tests for fetch_messages
  # 
  # Fetches messages
  # @param resource_uri URI of Resource
  # @param offset Offset ID for Messages to fetch from
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datetime Datetime formatted by ISO 8601
  # @return [Array<MessageEach>]
  describe 'fetch_messages test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_message
  # 
  # Enqueues a new message
  # @param resource_uri URI of Resource
  # @param datetime Datetime formatted by ISO 8601
  # @param message Message to add
  # @param [Hash] opts the optional parameters
  # @return [Message]
  describe 'send_message test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end