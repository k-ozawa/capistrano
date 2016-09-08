set :stage, :development #環境名
#各サーバの役割を記述
role :app, %w{root@192.168.116.131} #アプリケーションサーバ
role :web, %w{root@192.168.116.131} #webサーバ
role :db,  %w{root@192.168.116.131} #DBサーバ
#サーバ情報記述
server '192.168.116.131', #サーバ名
user: 'root', #実行ユーザ
roles: %w{web app db}, # サーバの役割
ssh_options: {
    keys: %w(~/.ssh/id_rsa),
    #auth_methods: %w(publickey), # 認証方法 passwordも可能
    password: 'pass1234' #password指定
}
