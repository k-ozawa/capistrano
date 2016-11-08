set :stage, :staging #環境名
#各サーバの役割を記述
role :app, %w{user@192.168.000.000} #アプリケーションサーバ
role :web, %w{user@192.168.000.000} #webサーバ
role :db,  %w{user@192.168.000.000} #DBサーバ
#サーバ情報記述
server '192.168.000.000', #サーバ名
user: 'user', #実行ユーザ
roles: %w{web app db}, # サーバの役割
ssh_options: {
    keys: %w(~/.ssh/id_rsa),
    #auth_methods: %w(publickey), # 認証方法 passwordも可能
    password: 'password' #password指定
}
