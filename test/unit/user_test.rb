require 'test_helper'

class UserTest < ActiveSupport::TestCase

	test "a user should enter a first name" do 
		user = User.new
		assert !user.save
		assert !user.errors[:first_name].empty?
	end

  	test "a user should enter a last name" do 
		user = User.new
		assert !user.save
		assert !user.errors[:last_name].empty?
	end

	test "a user should enter a profile_name" do 
		user = User.new
		assert !user.save
		assert !user.errors[:profile_name].empty?
	end

	test "user should have a unique profile name" do
		user = User.new
		user.profile_name = users(:rad).profile_name
		# user.first_name = 'rad'
		# user.last_name = 'chad'
		# user.email = 'rad@radchad.net'
		# user.password = 'password'
		# user.password_confirmation = 'password'
		assert !user.save
		assert !user.errors[:profile_name].empty?
	end

		test "user should have a profile name withoout spaces" do 
		user = User.new
		user.profile_name = "My Profile with spaces"

		assert !user.save
		assert !user.errors[:profile_name].empty?
		assert user.errors[:profile_name].include?("Must be formatted correctly.")
	end






end
