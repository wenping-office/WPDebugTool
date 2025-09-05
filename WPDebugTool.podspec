Pod::Spec.new do |s|
  s.name                = "WPDebugTool"
  s.version             = "1.3.8.1"
  s.summary             = "修复LLDebugTool通过SceneDelegate创建app初始化不成功问题"
  s.homepage            = "https://github.com/wenping-office/WPDebugTool"
  s.license             = "MIT"
  s.author              = { "HDB-Li" => "wenping.office@foxmail.com" }
  s.social_media_url    = "https://github.com/wenping-office"
  s.platform            = :ios, "8.0"
  s.source              = { :git => "https://github.com/wenping-office/WPDebugTool.git", :tag => s.version }
  s.requires_arc        = true

  s.subspec 'Network' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/Network/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/Network/**/*.{h,m}"
    ss.frameworks               = "SystemConfiguration", "CoreTelephony"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_NETWORK=1'}
    ss.dependency                 "WPDebugTool/Storage"
 end

  s.subspec 'Log' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/Log/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/Log/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_LOG=1'}
    ss.dependency                 "WPDebugTool/Storage"
  end
  
  s.subspec 'Crash' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/Crash/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/Crash/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_CRASH=1'}
    ss.dependency                 "WPDebugTool/Storage"
  end

  s.subspec 'AppInfo' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/AppInfo/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/AppInfo/**/*.{h,m}"
    ss.frameworks               = "SystemConfiguration"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_APP_INFO=1'}
    ss.dependency                 "WPDebugTool/Core"
  end
  
  s.subspec 'Sandbox' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/Sandbox/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/Sandbox/**/*.{h,m}"
    ss.frameworks               = "QuickLook", "WebKit", "AVKit"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_SANDBOX=1'}
    ss.dependency                 "WPDebugTool/Core"
  end
  
  s.subspec 'Screenshot' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/Screenshot/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/Screenshot/**/*.{h,m}"
    ss.frameworks               = "Photos"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_SCREENSHOT=1'}
    ss.dependency                 "WPDebugTool/Core"
  end
  
  s.subspec 'Hierarchy' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/Hierarchy/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/Hierarchy/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_HIERARCHY=1'}
    ss.dependency                 "WPDebugTool/Core"
  end
  
  s.subspec 'Magnifier' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/Magnifier/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/Magnifier/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_MAGNIFIER=1'}
    ss.dependency                 "WPDebugTool/Core"
  end
  
  s.subspec 'Ruler' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/Ruler/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/Ruler/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_RULER=1'}
    ss.dependency                 "WPDebugTool/Core"
  end
  
  s.subspec 'WidgetBorder' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/WidgetBorder/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/WidgetBorder/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_WIDGET_BORDER=1'}
    ss.dependency                 "WPDebugTool/Core"
  end
  
  s.subspec 'Html' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/Html/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/Html/**/*.{h,m}"
    ss.frameworks               = "WebKit"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_HTML=1'}
    ss.dependency                 "WPDebugTool/Core"
  end
  
  s.subspec 'Location' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/Location/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/Location/**/*.{h,m}"
    ss.frameworks               = "CoreLocation", "MapKit"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_LOCATION=1'}
    ss.dependency                 "WPDebugTool/Core"
  end
  
  s.subspec 'ShortCut' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Component/ShortCut/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Component/ShortCut/**/*.{h,m}"
    ss.pod_target_xcconfig      = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'WPDebugTool_SHORT_CUT=1'}
    ss.dependency                 "WPDebugTool/Core"
  end
  
  # Primary
  s.subspec 'Storage' do |ss|
    ss.public_header_files      = "WPDebugTool/Core/Storage/**/*.h"
    ss.source_files             = "WPDebugTool/Core/Storage/**/*.{h,m}"
    ss.dependency                 "WPDebugTool/Core"
    ss.dependency                 "FMDB", "~> 2.0"
  end
  
  # Primary
  s.subspec 'Core' do |ss|
    ss.public_header_files      = "WPDebugTool/LLDebug.h", "WPDebugTool/DebugTool/*.h", "WPDebugTool/Core/Others/**/*.h"
    ss.source_files             = "WPDebugTool/LLDebug.h", "WPDebugTool/DebugTool/*.{h,m}", "WPDebugTool/Core/Others/**/*.{h,m}"
    ss.resources                = "WPDebugTool/Core/Others/**/*.{xib,storyboard,bundle}"
  end
  
end
