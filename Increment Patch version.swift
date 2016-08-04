desc "Increment Patch version"
lane :patch do 
 version_number = update_version_number_and_commit(bump_type:"patch")
 version_number
end

desc "Increment minor version"
lane :minor do 
 version_number = update_version_number_and_commit(bump_type:"minor")
 version_number
end  

desc "Increment major version"
lane :major do 
 version_number = update_version_number_and_commit(bump_type:"major")
 version_number
end
