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

# Unit tests for TriglavClientBase::ResourceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ResourceApi' do
  before do
    # run before each test
    @instance = TriglavClientBase::ResourceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourceApi' do
    it 'should create an instact of ResourceApi' do
      expect(@instance).to be_instance_of(TriglavClientBase::ResourceApi)
    end
  end

  # unit tests for add_resource
  # 
  # Creates a new resource
  # @param resource Resource to add
  # @param [Hash] opts the optional parameters
  # @return [Resource]
  describe 'add_resource test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_resource_by_id_or_uri
  # 
  # Deletes single resource
  # @param id_or_uri ID or URI of resource to fetch
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_resource_by_id_or_uri test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_resource_by_id_or_uri
  # 
  # Returns a single resource
  # @param id_or_uri ID or URI of resource to fetch
  # @param [Hash] opts the optional parameters
  # @return [Resource]
  describe 'find_resource_by_id_or_uri test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_resources
  # 
  # Returns all resources from the system
  # @param cluster_id ID of Cluster
  # @param consumable Consuamble
  # @param notifiable Notifiable
  # @param [Hash] opts the optional parameters
  # @return [Array<ResourceEach>]
  describe 'find_resources test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_resource_by_id_or_uri
  # 
  # Updates a single resource
  # @param id_or_uri ID or URI of resource to fetch
  # @param resource Resource parameters to update
  # @param [Hash] opts the optional parameters
  # @return [Resource]
  describe 'update_resource_by_id_or_uri test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end