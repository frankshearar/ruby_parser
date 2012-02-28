require 'rubygems'
require 'ruby_parser'
require 'sexp'
require 'zipr/zipper'
require 'zipr/enumerable-extensions'
require 'pp'

foo = <<-EOT
  #dDSADASDKASDASD
  define 'BLAH'

  # specification of which quotas to be returned.
  define('LogisticsQuotaCriteria') {
    # whether quotas in the cancelled state should be returned or not.
    field 'includeCancelled',           :boolean
    # how much completed quota to load.
    field 'completed',                  :'Logistics.Internal.Shared.LoadCriteria', :optional => true
    # which open quota to load.
    field 'open',                       :LoadQuotaCriteria
   }
EOT

s = Ruby18Parser.new.parse(foo)

Zipr::PreOrderTraversal.new(s.zipper).each { |n|
  if not n.respond_to?(:comments) or n.comments.nil? then
#    puts "no comment for #{n.inspect}"
  else
    puts "comment: #{n.comments.inspect} for #{n.inspect}"
  end
}

puts "#############"
pp s
