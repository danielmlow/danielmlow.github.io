# Patch for jekyll-scholar compatibility with Ruby 3.2
# This fixes the File.exists? deprecation issue

# Monkey patch the File class to add the exists? method for backward compatibility
class File
  def self.exists?(path)
    exist?(path)
  end
end
