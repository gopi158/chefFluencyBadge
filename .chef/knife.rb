# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "gopi"
client_key               "#{current_dir}/gopi.pem"
chef_server_url          "https://edaltomp01.elan.elantecs.com/organizations/elan"
cookbook_path            ["#{current_dir}/../cookbooks"]
