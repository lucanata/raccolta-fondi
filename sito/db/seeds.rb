# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

Bill.create!([
  { :totale => 10000, :created_at => "2013-12-06 11:05:25", :updated_at => "2013-12-06 11:05:25", :user_id => 1, :campaign_id => 1 },
  { :totale => 10000, :created_at => "2013-12-06 11:06:31", :updated_at => "2013-12-06 11:06:31", :user_id => 1, :campaign_id => 3 },
  { :totale => 20000, :created_at => "2013-12-06 11:07:30", :updated_at => "2013-12-06 11:07:30", :user_id => 2, :campaign_id => 5 },
  { :totale => 20000, :created_at => "2013-12-06 11:08:31", :updated_at => "2013-12-06 11:08:31", :user_id => 2, :campaign_id => 6 },
  { :totale => 10000, :created_at => "2013-12-06 11:11:48", :updated_at => "2013-12-06 11:11:48", :user_id => 3, :campaign_id => 4 }
])



Campaign.create!([
  { :nome => "prima ", :descrizione => "prima campagna utente ciao \r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n", :durata => "2013-12-16", :goal => 60000, :chiusa => false, :created_at => "2013-12-06 10:50:11", :updated_at => "2013-12-06 10:50:11", :user_id => 2 },
  { :nome => "seconda", :descrizione => "seconda campagna utente ciao\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n", :durata => "2014-12-06", :goal => 1000000, :chiusa => false, :created_at => "2013-12-06 10:50:51", :updated_at => "2013-12-06 10:50:51", :user_id => 2 },
  { :nome => "terza", :descrizione => "terza campagna utente ciao\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n", :durata => "2014-03-06", :goal => 100000, :chiusa => false, :created_at => "2013-12-06 10:51:37", :updated_at => "2013-12-06 10:51:37", :user_id => 2 },
  { :nome => "prima prova", :descrizione => "prima campagna utente prova\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n", :durata => "2014-10-06", :goal => 200000, :chiusa => false, :created_at => "2013-12-06 10:56:12", :updated_at => "2013-12-06 10:56:12", :user_id => 1 },
  { :nome => "seconda prova", :descrizione => "seconda campagna utente prova\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n", :durata => "2013-12-30", :goal => 20000, :chiusa => false, :created_at => "2013-12-06 10:56:43", :updated_at => "2013-12-06 10:56:43", :user_id => 1 },
  { :nome => "terza  prova", :descrizione => "terza campagna utente prova\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n", :durata => "2016-12-06", :goal => 30000, :chiusa => false, :created_at => "2013-12-06 10:57:19", :updated_at => "2013-12-06 10:57:19", :user_id => 1 }
])



User.create!([
  { :email => "prova@prova.it", :encrypted_password => "$2a$10$9yhBrgL2R4pzEGY4JEW.Tut0guyjtkh7piM8Fk6.3baHkBsHo/fqa", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 2, :current_sign_in_at => "2013-12-06 10:55:38", :last_sign_in_at => "2013-12-06 10:41:27", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-12-06 10:41:27", :updated_at => "2013-12-06 10:55:38", :nome => "Prova", :cognome => "Prova", :via => "via prova", :ncivico => "10", :cap => 11111, :paese => "Prova", :prov => "Prova", :datanascita => "1983-12-06", :associazione => nil, :piva_codf => "1111111111111111" },
  { :email => "ciao@ciao.it", :encrypted_password => "$2a$10$et0uqBN4E0Hc3VeR.U7YRuqdQ37OSeYSRClsj7TE/HSqD8x2Xxd..", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 2, :current_sign_in_at => "2013-12-06 11:07:16", :last_sign_in_at => "2013-12-06 10:43:26", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-12-06 10:43:25", :updated_at => "2013-12-06 11:07:16", :nome => "ciao", :cognome => "ciao", :via => "ciao", :ncivico => "10", :cap => 11111, :paese => "ciao", :prov => "ciao", :datanascita => "1893-12-06", :associazione => nil, :piva_codf => "1111111111111111" },
  { :email => "terzo@terzo.it", :encrypted_password => "$2a$10$uUEGIPvRoE6aXl.LxWFyCuii0W/DYpCyuqt5BN9GCtpPAVvD8cFw2", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-12-06 11:11:16", :last_sign_in_at => "2013-12-06 11:11:16", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-12-06 11:11:16", :updated_at => "2013-12-06 11:11:16", :nome => "terzo", :cognome => "terzo", :via => "terzo", :ncivico => "11", :cap => 11111, :paese => "terzo", :prov => "terzo", :datanascita => "1990-12-06", :associazione => nil, :piva_codf => "1111111111111111" }
])


