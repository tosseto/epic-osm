require "spec_helper"

require_relative '../models/Query'


describe Query do

  	it "Can count the distinct number of changesets for a given analysis window" do 

		this_analysis_window = AnalysisWindow.new

		puts "Number of Changesets: #{this_analysis_window.changeset_count}"

  	end

  	it "Can count the distinct users in changesets for a given analysis window" do 

		this_analysis_window = AnalysisWindow.new

		puts "Number of Distinct Users: #{this_analysis_window.distinct_users_in_changesets.length}"
  	end

  	it "Can count the number of changesets per day" do 
		this_analysis_window = AnalysisWindow.new

		per_day = this_analysis_window.changesets_per_day

		puts "Day : Number of Changesets"
		per_day.each do |k,v|
			puts "#{k}:  #{v.length}"
		end
	end

	it "Can count the number of users per day" do 
		this_analysis_window = AnalysisWindow.new

		per_day = this_analysis_window.users_per_day
		
		puts "Day : Number of Users"
		per_day.each do |k,v|
			puts "#{k}:  #{v.length}"
		end
	end
end