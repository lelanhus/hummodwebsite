# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://hummod.org"

SitemapGenerator::Sitemap.add_links do |sitemap|
  # Put links creation logic here.
  #
  # The Root Path ('/') and Sitemap Index file are added automatically.
  # Links are added to the Sitemap output in the order they are specified.
  #
  # Usage: sitemap.add path, options
  #        (default options are used if you don't specify them)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host


  # Examples:

  # add '/downloads'
  sitemap.add downloads_path, :priority => 0.7, :changefreq => 'monthly'

  # add all individual articles
  Download.all.each do |a|
    sitemap.add download_path(a), :lastmod => a.updated_at
  end
  
  HelpDocument.all.each do |a|
    sitemap.add help_document_path(a), :lastmod => a.updated_at
  end
  
  Publication.all.each do |a|
    sitemap.add publication_path(a), :lastmod => a.updated_at
  end
  
  
  
  # add merchant path
  #sitemap.add '/purchase', :priority => 0.7
  sitemap.add '/help', :priority => 0.7
  sitemap.add '/', :priority => 0.7
  
  # add all individual news with images
  #Person.all.each do |n|
  #  sitemap.add people_path(n), :lastmod => n.updated_at, :images=>n.photos.collect{ |r| :loc=>r.photo.url, :title=>r.photo.name }
  #end

end

# Including Sitemaps from Rails Engines.
#
# These Sitemaps should be almost identical to a regular Sitemap file except
# they needn't define their own SitemapGenerator::Sitemap.default_host since
# they will undoubtedly share the host name of the application they belong to.
#
# As an example, say we have a Rails Engine in vendor/plugins/cadability_client
# We can include its Sitemap here as follows:
#
#file = File.join(Rails.root, 'vendor/plugins/cadability_client/config/sitemap.rb')
#eval(open(file).read, binding, file)