private_lane :update_version_number_and_commit do |options|
 ensure_git_status_clean
 new_version_number = options[:number]
 bump_type = options[:bump_type]
  if (xcodeproj == nil)
    raise "Your fastlane File is missing a xcodeproj variable: xcodeproj = './PATH_TO_PROJECT.xcodeproj/' ".red
  end
if xcodeproj
  if new_version_number
   increment_version_number(version_number: new_version_number,
    xcodeproj: xcodeproj)
 elsif bump_type
   increment_version_number(bump_type: bump_type,xcodeproj: xcodeproj)
 else
   increment_version_number(xcodeproj: xcodeproj)
  end
 version_number = get_version_short_string
 sh "git commit -am \"Change version number: #{version_number} \""
 version_number
  end
end

