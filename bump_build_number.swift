desc "bump build version and commit"
lane :bump do    
 increment_build_number
 build_number = lane_context[SharedValues::BUILD_NUMBER]
 sh "git commit -am \"Build version bump: #{build_number} [ci skip]\""
 build_number
end
