namespace :spree do
  namespace :extensions do
    namespace :gst_deductor do
      desc "Copies public assets of the Gst Deductor to the instance public/ directory."
      task :update => :environment do
        is_svn_git_or_dir = proc {|path| path =~ /\.svn/ || path =~ /\.git/ || File.directory?(path) }
        Dir[GstDeductorExtension.root + "/public/**/*"].reject(&is_svn_git_or_dir).each do |file|
          path = file.sub(GstDeductorExtension.root, '')
          directory = File.dirname(path)
          puts "Copying #{path}..."
          mkdir_p Rails.root + directory
          cp file, Rails.root + path
        end
      end  
    end
  end
end