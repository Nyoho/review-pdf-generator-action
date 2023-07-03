require 'fileutils'
require 'yaml'
require 'date'

OUTPUT_PATH = "build/output.epub"

config_dir = "."

if ARGV[0]
  config_dir = File.dirname(ARGV[0])
end

config_path = File.join(config_dir, "config.yml")

conf = YAML.safe_load(File.read(config_path), permitted_classes: [Date])
epub_path = File.join(config_dir, conf["bookname"]+".epub")
puts "generate EPUB #{epub_path}."

if File.exist?(epub_path)
  FileUtils.mkdir_p(File.dirname(OUTPUT_PATH))
  FileUtils.cp(epub_path, OUTPUT_PATH)
end
